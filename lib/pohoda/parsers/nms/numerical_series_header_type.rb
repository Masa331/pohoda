module Pohoda
  module Parsers
    module Nms
      class NumericalSeriesHeaderType
        include ParserCore::BaseParser

        def id
          at 'nms:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'nms:extId')
        end

        def prefix
          at 'nms:prefix'
        end

        def number
          at 'nms:number'
        end

        def top_number
          at 'nms:topNumber'
        end

        def name
          at 'nms:name'
        end

        def agenda
          at 'nms:agenda'
        end

        def type_of_document
          at 'nms:typeOfDocument'
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

        def period_account_unit
          submodel_at(Nms::PeriodAccountUnitType, 'nms:periodAccountUnit')
        end

        def unit_pzd
          submodel_at(Typ::RefType, 'nms:unitPZD')
        end

        def year
          at 'nms:year'
        end

        def note
          at 'nms:note'
        end

        def mark_record
          at 'nms:markRecord'
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['nms:parameters', 'typ:parameter'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'nms:id'
          hash[:ext_id] = ext_id.to_h_with_attrs if has? 'nms:extId'
          hash[:prefix] = prefix if has? 'nms:prefix'
          hash[:number] = number if has? 'nms:number'
          hash[:top_number] = top_number if has? 'nms:topNumber'
          hash[:name] = name if has? 'nms:name'
          hash[:agenda] = agenda if has? 'nms:agenda'
          hash[:type_of_document] = type_of_document if has? 'nms:typeOfDocument'
          hash[:cash_account] = cash_account.to_h_with_attrs if has? 'nms:cashAccount'
          hash[:cashbox] = cashbox.to_h_with_attrs if has? 'nms:cashbox'
          hash[:period] = period if has? 'nms:period'
          hash[:period_account_unit] = period_account_unit.to_h_with_attrs if has? 'nms:periodAccountUnit'
          hash[:unit_pzd] = unit_pzd.to_h_with_attrs if has? 'nms:unitPZD'
          hash[:year] = year if has? 'nms:year'
          hash[:note] = note if has? 'nms:note'
          hash[:mark_record] = mark_record if has? 'nms:markRecord'
          hash[:parameters] = parameters.map(&:to_h_with_attrs) if has? 'nms:parameters'

          hash
        end
      end
    end
  end
end