module Pohoda
  module Builders
    module MKasa
      class MKasaResponseType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

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