module Pohoda
  module Parsers
    module Prm
      class CtrlDefType
        include ParserCore::BaseParser

        def name
          at 'prm:name'
        end

        def name_attributes
          attributes_at 'prm:name'
        end

        def label
          at 'prm:label'
        end

        def label_attributes
          attributes_at 'prm:label'
        end

        def rect
          at 'prm:rect'
        end

        def rect_attributes
          attributes_at 'prm:rect'
        end

        def type
          at 'prm:type'
        end

        def type_attributes
          attributes_at 'prm:type'
        end

        def style
          at 'prm:style'
        end

        def style_attributes
          attributes_at 'prm:style'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:name] = name if has? 'prm:name'
          hash[:name_attributes] = name_attributes if has? 'prm:name'
          hash[:label] = label if has? 'prm:label'
          hash[:label_attributes] = label_attributes if has? 'prm:label'
          hash[:rect] = rect if has? 'prm:rect'
          hash[:rect_attributes] = rect_attributes if has? 'prm:rect'
          hash[:type] = type if has? 'prm:type'
          hash[:type_attributes] = type_attributes if has? 'prm:type'
          hash[:style] = style if has? 'prm:style'
          hash[:style_attributes] = style_attributes if has? 'prm:style'

          hash
        end
      end
    end
  end
end