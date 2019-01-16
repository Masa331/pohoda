module Pohoda
  module Builders
    module Adb
      class GDPRItemsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :gdpr_item
            data[:gdpr_item].each { |i| root << Adb::GDPRItemType.new('adb:GDPRItem', i).builder }
          end

          root
        end
      end
    end
  end
end