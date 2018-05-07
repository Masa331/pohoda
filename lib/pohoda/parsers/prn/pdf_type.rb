module Pohoda
  module Parsers
    module Prn
      class PDFType
        include ParserCore::BaseParser

        def file_name
          at 'prn:fileName'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:file_name] = file_name if has? 'prn:fileName'

          hash
        end
      end
    end
  end
end