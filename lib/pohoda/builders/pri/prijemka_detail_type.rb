module Pohoda
  module Builders
    module Pri
      class PrijemkaDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

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