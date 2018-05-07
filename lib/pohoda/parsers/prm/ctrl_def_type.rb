module Pohoda
  module Parsers
    module Prm
      class CtrlDefType
        include ParserCore::BaseParser

        def name
          at 'prm:name'
        end

        def label
          at 'prm:label'
        end

        def rect
          at 'prm:rect'
        end

        def type
          at 'prm:type'
        end

        def style
          at 'prm:style'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:name] = name if has? 'prm:name'
          hash[:label] = label if has? 'prm:label'
          hash[:rect] = rect if has? 'prm:rect'
          hash[:type] = type if has? 'prm:type'
          hash[:style] = style if has? 'prm:style'

          hash
        end
      end
    end
  end
end