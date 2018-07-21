module Pohoda
  module Parsers
    module Vch
      class VoucherDetailType
        include ParserCore::BaseParser

        def voucher_item
          array_of_at(Vch::VoucherItemType, ['vch:voucherItem'])
        end

        def voucher_liquidation_item
          array_of_at(Vch::VoucherliquidationItemType, ['vch:voucherLiquidationItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:voucher_item] = voucher_item.map(&:to_h) if has? 'vch:voucherItem'
          hash[:voucher_liquidation_item] = voucher_liquidation_item.map(&:to_h) if has? 'vch:voucherLiquidationItem'

          hash
        end
      end
    end
  end
end