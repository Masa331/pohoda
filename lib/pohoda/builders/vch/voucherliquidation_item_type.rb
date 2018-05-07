module Pohoda
  module Builders
    module Vch
      class VoucherliquidationItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :settings_liquidation
            root << Vch::SettingsLiquidationType.new('settingsLiquidation', data[:settings_liquidation]).builder
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