module Pohoda
  module Parsers
    module Lst
      class ListAccountType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_account
          at 'lst:itemAccount'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:item_account] = item_account if has? 'lst:itemAccount'

          hash
          super.merge(hash)
        end
      end
    end
  end
end