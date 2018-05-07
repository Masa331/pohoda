module Pohoda
  module Parsers
    module Lst
      class CreateAccountingDoubleEntryType
        include ParserCore::BaseParser

        def create_accounting
          at 'lst:createAccounting'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:create_accounting] = create_accounting if has? 'lst:createAccounting'

          hash
        end
      end
    end
  end
end