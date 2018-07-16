module Pohoda
  module Builders
    module Typ
      class ResourcesMOSStype
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :ids
            data[:ids].map { |i| Ox::Element.new('typ:ids') << i }.each { |i| root << i }
          end

          root
        end
      end
    end
  end
end