module Pohoda
  module Parsers
    module Prn
      class PDFType
        include ParserCore::BaseParser

        def file_name
          at 'prn:fileName'
        end

        def file_name_attributes
          attributes_at 'prn:fileName'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:file_name] = file_name if has? 'prn:fileName'
          hash[:file_name_attributes] = file_name_attributes if has? 'prn:fileName'

          hash
        end
      end
    end
  end
end