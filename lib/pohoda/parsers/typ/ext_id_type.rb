module Pohoda
  module Parsers
    module Typ
      class ExtIdType
        include ParserCore::BaseParser

        def ids
          at 'typ:ids'
        end

        def ex_system_name
          at 'typ:exSystemName'
        end

        def ex_system_text
          at 'typ:exSystemText'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:ids] = ids if has? 'typ:ids'
          hash[:ex_system_name] = ex_system_name if has? 'typ:exSystemName'
          hash[:ex_system_text] = ex_system_text if has? 'typ:exSystemText'

          hash
        end
      end
    end
  end
end