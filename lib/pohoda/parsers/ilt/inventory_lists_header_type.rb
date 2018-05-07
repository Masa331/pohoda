module Pohoda
  module Parsers
    module Ilt
      class InventoryListsHeaderType
        include ParserCore::BaseParser

        def id
          at 'ilt:id'
        end

        def number
          submodel_at(Typ::NumberType, 'ilt:number')
        end

        def date
          at 'ilt:date'
        end

        def text
          at 'ilt:text'
        end

        def store
          submodel_at(Typ::RefType, 'ilt:store')
        end

        def centre
          submodel_at(Typ::RefType, 'ilt:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'ilt:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'ilt:contract')
        end

        def note
          at 'ilt:note'
        end

        def mark_record
          at 'ilt:markRecord'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'ilt:id'
          hash[:number] = number.to_h_with_attrs if has? 'ilt:number'
          hash[:date] = date if has? 'ilt:date'
          hash[:text] = text if has? 'ilt:text'
          hash[:store] = store.to_h_with_attrs if has? 'ilt:store'
          hash[:centre] = centre.to_h_with_attrs if has? 'ilt:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'ilt:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'ilt:contract'
          hash[:note] = note if has? 'ilt:note'
          hash[:mark_record] = mark_record if has? 'ilt:markRecord'

          hash
        end
      end
    end
  end
end