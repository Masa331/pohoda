module Pohoda
  module Builders
    module Gdp
      class GDPRType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :gdpr_header
            root << Gdp::GDPRHeaderType.new('gdp:GDPRHeader', data[:gdpr_header]).builder
          end

          root
        end
      end
    end
  end
end