module Pohoda
  module Builders
    module Vch
      class VoucherliquidationItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :settings_liquidation
            root << Vch::SettingsLiquidationType.new('vch:settingsLiquidation', data[:settings_liquidation]).builder
          end
          if data.key? :liquidation_item
            data[:liquidation_item].each { |i| root << Vch::LiquidationItemType.new('vch:liquidationItem', i).builder }
          end

          root
        end
      end
    end
  end
end