module Pohoda
  module Builders
    module MKasa
      class MKasaResponseType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :configuration
            root << MKasa::ConfigurationType.new('mKasa:configuration', data[:configuration]).builder
          end
          if data.key? :import_response
            root << MKasa::ImportResponseType.new('mKasa:importResponse', data[:import_response]).builder
          end

          root
        end
      end
    end
  end
end