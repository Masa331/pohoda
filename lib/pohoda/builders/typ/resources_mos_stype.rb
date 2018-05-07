module Pohoda
  module Builders
    module Typ
      class ResourcesMOSStype
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :ids
            data[:ids].map { |i| Ox::Element.new('typ:ids') << i }.each { |i| root << i }
          end

          root
        end
      end
    end
  end
end