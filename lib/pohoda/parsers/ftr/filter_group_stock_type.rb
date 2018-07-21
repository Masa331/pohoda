module Pohoda
  module Parsers
    module Ftr
      class FilterGroupStockType
        include ParserCore::BaseParser

        def id
          at 'ftr:id'
        end

        def id_attributes
          attributes_at 'ftr:id'
        end

        def code
          at 'ftr:code'
        end

        def code_attributes
          attributes_at 'ftr:code'
        end

        def name
          at 'ftr:name'
        end

        def name_attributes
          attributes_at 'ftr:name'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'ftr:id'
          hash[:id_attributes] = id_attributes if has? 'ftr:id'
          hash[:code] = code if has? 'ftr:code'
          hash[:code_attributes] = code_attributes if has? 'ftr:code'
          hash[:name] = name if has? 'ftr:name'
          hash[:name_attributes] = name_attributes if has? 'ftr:name'

          hash
        end
      end
    end
  end
end