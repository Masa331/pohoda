module Pohoda
  module Builders
    module Typ
      class LinksType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :link
            data[:link].each { |i| root << Typ::LinkElemetType.new('typ:link', i).builder }
          end

          root
        end
      end
    end
  end
end