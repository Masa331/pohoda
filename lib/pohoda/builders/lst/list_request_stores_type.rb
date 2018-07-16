module Pohoda
  module Builders
    module Lst
      class ListRequestStoresType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :stores
            element = Ox::Element.new('lst:stores')
            data[:stores].each { |i| element << Typ::RefType.new('lst:store', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end