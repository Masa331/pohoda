module Pohoda
  module Builders
    module Stk
      class RelatedFilesType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :related_file
            data[:related_file].each { |i| root << Stk::RelatedFileType.new('stk:relatedFile', i).builder }
          end

          root
        end
      end
    end
  end
end