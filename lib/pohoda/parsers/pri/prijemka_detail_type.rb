module Pohoda
  module Parsers
    module Pri
      class PrijemkaDetailType
        include ParserCore::BaseParser

        def prijemka_item
          array_of_at(Pri::PrijemkaItemType, ['pri:prijemkaItem'])
        end

        def prijemka_accessory_charges_item
          array_of_at(Pri::PrijemkaAccessoryChargesItemType, ['pri:prijemkaAccessoryChargesItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:prijemka_item] = prijemka_item.map(&:to_h_with_attrs) if has? 'pri:prijemkaItem'
          hash[:prijemka_accessory_charges_item] = prijemka_accessory_charges_item.map(&:to_h_with_attrs) if has? 'pri:prijemkaAccessoryChargesItem'

          hash
        end
      end
    end
  end
end