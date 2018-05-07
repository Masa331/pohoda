module Pohoda
  module Parsers
    module Vyr
      class VyrobaHeaderType
        include ParserCore::BaseParser

        def id
          at 'vyr:id'
        end

        def number
          submodel_at(Typ::NumberType, 'vyr:number')
        end

        def date
          at 'vyr:date'
        end

        def time
          at 'vyr:time'
        end

        def sym_par
          at 'vyr:symPar'
        end

        def text
          at 'vyr:text'
        end

        def partner_identity
          submodel_at(Typ::Address, 'vyr:partnerIdentity')
        end

        def centre_source
          submodel_at(Typ::RefType, 'vyr:centreSource')
        end

        def centre_destination
          submodel_at(Typ::RefType, 'vyr:centreDestination')
        end

        def activity
          submodel_at(Typ::RefType, 'vyr:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'vyr:contract')
        end

        def note
          at 'vyr:note'
        end

        def int_note
          at 'vyr:intNote'
        end

        def mark_record
          at 'vyr:markRecord'
        end

        def labels
          array_of_at(Typ::LabelType, ['vyr:labels', 'typ:label'])
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['vyr:parameters', 'typ:parameter'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'vyr:id'
          hash[:number] = number.to_h_with_attrs if has? 'vyr:number'
          hash[:date] = date if has? 'vyr:date'
          hash[:time] = time if has? 'vyr:time'
          hash[:sym_par] = sym_par if has? 'vyr:symPar'
          hash[:text] = text if has? 'vyr:text'
          hash[:partner_identity] = partner_identity.to_h_with_attrs if has? 'vyr:partnerIdentity'
          hash[:centre_source] = centre_source.to_h_with_attrs if has? 'vyr:centreSource'
          hash[:centre_destination] = centre_destination.to_h_with_attrs if has? 'vyr:centreDestination'
          hash[:activity] = activity.to_h_with_attrs if has? 'vyr:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'vyr:contract'
          hash[:note] = note if has? 'vyr:note'
          hash[:int_note] = int_note if has? 'vyr:intNote'
          hash[:mark_record] = mark_record if has? 'vyr:markRecord'
          hash[:labels] = labels.map(&:to_h_with_attrs) if has? 'vyr:labels'
          hash[:parameters] = parameters.map(&:to_h_with_attrs) if has? 'vyr:parameters'

          hash
        end
      end
    end
  end
end