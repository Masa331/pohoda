module Pohoda
  module Builders
    module Stk
      class RelatedFilesType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :related_file
            data[:related_file].each { |i| root << Stk::RelatedFileType.new('stk:relatedFile', i).builder }
          end

          root
        end
      end
    end
  end
end