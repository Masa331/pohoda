module Pohoda
  module Parsers
    module Typ
      class ResponsiblePersonType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def surname
          at 'typ:surname'
        end

        def name
          at 'typ:name'
        end

        def degree
          at 'typ:degree'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'typ:id'
          hash[:surname] = surname if has? 'typ:surname'
          hash[:name] = name if has? 'typ:name'
          hash[:degree] = degree if has? 'typ:degree'

          hash
        end
      end
    end
  end
end