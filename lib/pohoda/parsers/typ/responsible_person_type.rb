module Pohoda
  module Parsers
    module Typ
      class ResponsiblePersonType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def id_attributes
          attributes_at 'typ:id'
        end

        def surname
          at 'typ:surname'
        end

        def surname_attributes
          attributes_at 'typ:surname'
        end

        def name
          at 'typ:name'
        end

        def name_attributes
          attributes_at 'typ:name'
        end

        def degree
          at 'typ:degree'
        end

        def degree_attributes
          attributes_at 'typ:degree'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'typ:id'
          hash[:id_attributes] = id_attributes if has? 'typ:id'
          hash[:surname] = surname if has? 'typ:surname'
          hash[:surname_attributes] = surname_attributes if has? 'typ:surname'
          hash[:name] = name if has? 'typ:name'
          hash[:name_attributes] = name_attributes if has? 'typ:name'
          hash[:degree] = degree if has? 'typ:degree'
          hash[:degree_attributes] = degree_attributes if has? 'typ:degree'

          hash
        end
      end
    end
  end
end