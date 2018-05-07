module Pohoda
  module Parsers
    module Ipm
      class ParameterListItemType
        include ParserCore::BaseParser

        def id
          at 'ipm:id'
        end

        def name
          at 'ipm:name'
        end

        def description
          at 'ipm:description'
        end

        def sequence
          at 'ipm:sequence'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'ipm:id'
          hash[:name] = name if has? 'ipm:name'
          hash[:description] = description if has? 'ipm:description'
          hash[:sequence] = sequence if has? 'ipm:sequence'

          hash
        end
      end
    end
  end
end