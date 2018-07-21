module Pohoda
  module Parsers
    module Stk
      class RelatedFilesType
        include ParserCore::BaseParser

        def related_file
          array_of_at(Stk::RelatedFileType, ['stk:relatedFile'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:related_file] = related_file.map(&:to_h) if has? 'stk:relatedFile'

          hash
        end
      end
    end
  end
end