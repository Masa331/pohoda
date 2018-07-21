module Pohoda
  module Parsers
    module Typ
      class AccountingType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def id_attributes
          attributes_at 'typ:id'
        end

        def ids
          at 'typ:ids'
        end

        def ids_attributes
          attributes_at 'typ:ids'
        end

        def accounting_type
          at 'typ:accountingType'
        end

        def accounting_type_attributes
          attributes_at 'typ:accountingType'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'typ:id'
          hash[:id_attributes] = id_attributes if has? 'typ:id'
          hash[:ids] = ids if has? 'typ:ids'
          hash[:ids_attributes] = ids_attributes if has? 'typ:ids'
          hash[:accounting_type] = accounting_type if has? 'typ:accountingType'
          hash[:accounting_type_attributes] = accounting_type_attributes if has? 'typ:accountingType'

          hash
        end
      end
    end
  end
end