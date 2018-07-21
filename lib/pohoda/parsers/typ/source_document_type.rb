module Pohoda
  module Parsers
    module Typ
      class SourceDocumentType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def id_attributes
          attributes_at 'typ:id'
        end

        def number
          at 'typ:number'
        end

        def number_attributes
          attributes_at 'typ:number'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'typ:id'
          hash[:id_attributes] = id_attributes if has? 'typ:id'
          hash[:number] = number if has? 'typ:number'
          hash[:number_attributes] = number_attributes if has? 'typ:number'

          hash
        end
      end
    end
  end
end