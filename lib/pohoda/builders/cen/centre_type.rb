module Pohoda
  module Builders
    module Cen
      class CentreType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :centre_header
            root << Cen::CentreHeaderType.new('cen:centreHeader', data[:centre_header]).builder
          end

          root
        end
      end
    end
  end
end