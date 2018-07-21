module Pohoda
  module Parsers
    module Ipm
      class ParameterListItemType
        include ParserCore::BaseParser

        def id
          at 'ipm:id'
        end

        def id_attributes
          attributes_at 'ipm:id'
        end

        def name
          at 'ipm:name'
        end

        def name_attributes
          attributes_at 'ipm:name'
        end

        def description
          at 'ipm:description'
        end

        def description_attributes
          attributes_at 'ipm:description'
        end

        def sequence
          at 'ipm:sequence'
        end

        def sequence_attributes
          attributes_at 'ipm:sequence'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'ipm:id'
          hash[:id_attributes] = id_attributes if has? 'ipm:id'
          hash[:name] = name if has? 'ipm:name'
          hash[:name_attributes] = name_attributes if has? 'ipm:name'
          hash[:description] = description if has? 'ipm:description'
          hash[:description_attributes] = description_attributes if has? 'ipm:description'
          hash[:sequence] = sequence if has? 'ipm:sequence'
          hash[:sequence_attributes] = sequence_attributes if has? 'ipm:sequence'

          hash
        end
      end
    end
  end
end