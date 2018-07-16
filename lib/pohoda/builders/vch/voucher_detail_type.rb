module Pohoda
  module Builders
    module Vch
      class VoucherDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :voucher_item
            data[:voucher_item].each { |i| root << Vch::VoucherItemType.new('vch:voucherItem', i).builder }
          end
          if data.key? :voucher_liquidation_item
            data[:voucher_liquidation_item].each { |i| root << Vch::VoucherliquidationItemType.new('vch:voucherLiquidationItem', i).builder }
          end

          root
        end
      end
    end
  end
end