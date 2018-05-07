module Pohoda
  module Builders
    module Ftr
      class SelectedIcoType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :ico
            data[:ico].each { |i| root << Typ::IcoType.new('ftr:ico', i).builder }
          end

          root
        end
      end
    end
  end
end