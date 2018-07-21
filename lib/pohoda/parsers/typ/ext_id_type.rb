module Pohoda
  module Parsers
    module Typ
      class ExtIdType
        include ParserCore::BaseParser

        def ids
          at 'typ:ids'
        end

        def ids_attributes
          attributes_at 'typ:ids'
        end

        def ex_system_name
          at 'typ:exSystemName'
        end

        def ex_system_name_attributes
          attributes_at 'typ:exSystemName'
        end

        def ex_system_text
          at 'typ:exSystemText'
        end

        def ex_system_text_attributes
          attributes_at 'typ:exSystemText'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:ids] = ids if has? 'typ:ids'
          hash[:ids_attributes] = ids_attributes if has? 'typ:ids'
          hash[:ex_system_name] = ex_system_name if has? 'typ:exSystemName'
          hash[:ex_system_name_attributes] = ex_system_name_attributes if has? 'typ:exSystemName'
          hash[:ex_system_text] = ex_system_text if has? 'typ:exSystemText'
          hash[:ex_system_text_attributes] = ex_system_text_attributes if has? 'typ:exSystemText'

          hash
        end
      end
    end
  end
end