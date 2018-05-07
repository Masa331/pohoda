module Pohoda
  module Parsers
    module Bal
      class BalanceType
        include ParserCore::BaseParser

        def balance_header
          submodel_at(Bal::BalanceHeaderType, 'bal:balanceHeader')
        end

        def balance_item
          array_of_at(Bal::BalanceItemType, ['bal:balanceItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:balance_header] = balance_header.to_h_with_attrs if has? 'bal:balanceHeader'
          hash[:balance_item] = balance_item.map(&:to_h_with_attrs) if has? 'bal:balanceItem'

          hash
        end
      end
    end
  end
end