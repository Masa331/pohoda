module Pohoda
  module Builders
    module Est
      class EstablishmentType2
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :establishment_header
            root << Est::EstablishmentHeaderType.new('est:establishmentHeader', data[:establishment_header]).builder
          end

          root
        end
      end
    end
  end
end