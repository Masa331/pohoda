module Pohoda
  module Builders
    module Typ
      class CancelDocumentType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :source_document
            root << Typ::SourceDocumentType.new('sourceDocument', data[:source_document]).builder
          end

          root
        end
      end
    end
  end
end