module Pohoda
  module Builder
    module BaseBuilder
      def initialize(attributes = {})
        attributes ||= {}
        attributes.each do |key, value|
          send("#{key}=", value)
        end
      end

      def to_xml
        doc.to_xml
      end

      def doc
        b = builder
        doc = b.doc
        doc.root.children.each { |c| traverse_and_clean(c) }
        doc.encoding = 'UTF-8'
        doc
      end

      private

      def traverse_and_clean(kid)
        kid.children.map { |child| traverse_and_clean(child) }
        kid.remove if kid.content.empty?
      end
    end
  end
end
