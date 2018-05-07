module Pohoda
  module Builders
    module MKasa
      class MKasaRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :export
            root << MKasa::ExportRequestType.new('export', data[:export]).builder
          end
          if data.key? :import
            root << MKasa::ImportRequestType.new('import', data[:import]).builder
          end

          root
        end
      end
    end
  end
end