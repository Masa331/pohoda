module Pohoda
  module Builders
    module Pri
      class PrijemkaDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :prijemka_item
            data[:prijemka_item].each { |i| root << Pri::PrijemkaItemType.new('pri:prijemkaItem', i).builder }
          end
          if data.key? :prijemka_accessory_charges_item
            data[:prijemka_accessory_charges_item].each { |i| root << Pri::PrijemkaAccessoryChargesItemType.new('pri:prijemkaAccessoryChargesItem', i).builder }
          end

          root
        end
      end
    end
  end
end