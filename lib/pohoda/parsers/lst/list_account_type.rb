module Pohoda
  module Parsers
    module Lst
      class ListAccountType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_account
          at 'lst:itemAccount'
        end

        def item_account_attributes
          attributes_at 'lst:itemAccount'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_account] = item_account if has? 'lst:itemAccount'
          hash[:item_account_attributes] = item_account_attributes if has? 'lst:itemAccount'

          hash
          super.merge(hash)
        end
      end
    end
  end
end