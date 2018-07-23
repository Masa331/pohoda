module Pohoda
  module Builders
    module Typ
      class CancelDocumentType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :source_document
            root << Typ::SourceDocumentType.new('typ:sourceDocument', data[:source_document]).builder
          end

          root
        end
      end
    end
  end
end