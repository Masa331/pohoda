module Pohoda
  module Parsers
    module Nms
      class NumericalSeriesHeaderType
        include ParserCore::BaseParser

        def id
          at 'nms:id'
        end

        def id_attributes
          attributes_at 'nms:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'nms:extId')
        end

        def prefix
          at 'nms:prefix'
        end

        def prefix_attributes
          attributes_at 'nms:prefix'
        end

        def number
          at 'nms:number'
        end

        def number_attributes
          attributes_at 'nms:number'
        end

        def top_number
          at 'nms:topNumber'
        end

        def top_number_attributes
          attributes_at 'nms:topNumber'
        end

        def name
          at 'nms:name'
        end

        def name_attributes
          attributes_at 'nms:name'
        end

        def agenda
          at 'nms:agenda'
        end

        def agenda_attributes
          attributes_at 'nms:agenda'
        end

        def type_of_document
          at 'nms:typeOfDocument'
        end

        def type_of_document_attributes
          attributes_at 'nms:typeOfDocument'
        end

        def cash_account
          submodel_at(Typ::RefType, 'nms:cashAccount')
        end

        def cashbox
          submodel_at(Typ::RefType, 'nms:cashbox')
        end

        def period
          at 'nms:period'
        end

        def period_attributes
          attributes_at 'nms:period'
        end

        def period_account_unit
          submodel_at(Nms::PeriodAccountUnitType, 'nms:periodAccountUnit')
        end

        def unit_pzd
          submodel_at(Typ::RefType, 'nms:unitPZD')
        end

        def year
          at 'nms:year'
        end

        def year_attributes
          attributes_at 'nms:year'
        end

        def note
          at 'nms:note'
        end

        def note_attributes
          attributes_at 'nms:note'
        end

        def mark_record
          at 'nms:markRecord'
        end

        def mark_record_attributes
          attributes_at 'nms:markRecord'
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['nms:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'nms:id'
          hash[:id_attributes] = id_attributes if has? 'nms:id'
          hash[:ext_id] = ext_id.to_h if has? 'nms:extId'
          hash[:prefix] = prefix if has? 'nms:prefix'
          hash[:prefix_attributes] = prefix_attributes if has? 'nms:prefix'
          hash[:number] = number if has? 'nms:number'
          hash[:number_attributes] = number_attributes if has? 'nms:number'
          hash[:top_number] = top_number if has? 'nms:topNumber'
          hash[:top_number_attributes] = top_number_attributes if has? 'nms:topNumber'
          hash[:name] = name if has? 'nms:name'
          hash[:name_attributes] = name_attributes if has? 'nms:name'
          hash[:agenda] = agenda if has? 'nms:agenda'
          hash[:agenda_attributes] = agenda_attributes if has? 'nms:agenda'
          hash[:type_of_document] = type_of_document if has? 'nms:typeOfDocument'
          hash[:type_of_document_attributes] = type_of_document_attributes if has? 'nms:typeOfDocument'
          hash[:cash_account] = cash_account.to_h if has? 'nms:cashAccount'
          hash[:cashbox] = cashbox.to_h if has? 'nms:cashbox'
          hash[:period] = period if has? 'nms:period'
          hash[:period_attributes] = period_attributes if has? 'nms:period'
          hash[:period_account_unit] = period_account_unit.to_h if has? 'nms:periodAccountUnit'
          hash[:unit_pzd] = unit_pzd.to_h if has? 'nms:unitPZD'
          hash[:year] = year if has? 'nms:year'
          hash[:year_attributes] = year_attributes if has? 'nms:year'
          hash[:note] = note if has? 'nms:note'
          hash[:note_attributes] = note_attributes if has? 'nms:note'
          hash[:mark_record] = mark_record if has? 'nms:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'nms:markRecord'
          hash[:parameters] = parameters.map(&:to_h) if has? 'nms:parameters'

          hash
        end
      end
    end
  end
end