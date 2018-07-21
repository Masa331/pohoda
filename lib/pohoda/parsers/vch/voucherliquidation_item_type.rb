module Pohoda
  module Parsers
    module Vch
      class VoucherliquidationItemType
        include ParserCore::BaseParser

        def settings_liquidation
          submodel_at(Vch::SettingsLiquidationType, 'vch:settingsLiquidation')
        end

        def liquidation_item
          array_of_at(Vch::LiquidationItemType, ['vch:liquidationItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:settings_liquidation] = settings_liquidation.to_h if has? 'vch:settingsLiquidation'
          hash[:liquidation_item] = liquidation_item.map(&:to_h) if has? 'vch:liquidationItem'

          hash
        end
      end
    end
  end
end