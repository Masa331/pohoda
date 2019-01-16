module Pohoda
  module Builders
    module Typ
      class LinkedDocumentType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:sourceAgenda', data[:source_agenda], data[:source_agenda_attributes]) if data.key? :source_agenda
          if data.key? :source_document
            root << Typ::SourceDocumentType.new('typ:sourceDocument', data[:source_document]).builder
          end
          if data.key? :source_document_item
            root << Typ::SourceDocumentItemType.new('typ:sourceDocumentItem', data[:source_document_item]).builder
          end

          root
        end
      end
    end
  end
end