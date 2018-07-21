module Pohoda
  module Parsers
    module Lst
      class CreateAccountingDoubleEntryType
        include ParserCore::BaseParser

        def create_accounting
          at 'lst:createAccounting'
        end

        def create_accounting_attributes
          attributes_at 'lst:createAccounting'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:create_accounting] = create_accounting if has? 'lst:createAccounting'
          hash[:create_accounting_attributes] = create_accounting_attributes if has? 'lst:createAccounting'

          hash
        end
      end
    end
  end
end