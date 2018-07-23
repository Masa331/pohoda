module Pohoda
  module Builders
    module MKasa
      class MKasaRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :export
            root << MKasa::ExportRequestType.new('mKasa:export', data[:export]).builder
          end
          if data.key? :import
            root << MKasa::ImportRequestType.new('mKasa:import', data[:import]).builder
          end

          root
        end
      end
    end
  end
end