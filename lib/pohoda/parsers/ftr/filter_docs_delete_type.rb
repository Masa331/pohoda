module Pohoda
  module Parsers
    module Ftr
      class FilterDocsDeleteType
        include ParserCore::BaseParser

        def id
          at 'ftr:id'
        end

        def id_attributes
          attributes_at 'ftr:id'
        end

        def number
          at 'ftr:number'
        end

        def number_attributes
          attributes_at 'ftr:number'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'ftr:id'
          hash[:id_attributes] = id_attributes if has? 'ftr:id'
          hash[:number] = number if has? 'ftr:number'
          hash[:number_attributes] = number_attributes if has? 'ftr:number'

          hash
        end
      end
    end
  end
end