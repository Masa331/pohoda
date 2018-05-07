module Pohoda
  module Parsers
    module Stk
      class RelatedFilesType
        include ParserCore::BaseParser

        def related_file
          array_of_at(Stk::RelatedFileType, ['stk:relatedFile'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:related_file] = related_file.map(&:to_h_with_attrs) if has? 'stk:relatedFile'

          hash
        end
      end
    end
  end
end