module Pohoda
  module Parsers
    module Typ
      class LabelsType
        include ParserCore::BaseParser

        def label
          array_of_at(Typ::LabelType, ['typ:label'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:label] = label.map(&:to_h) if has? 'typ:label'

          hash
        end
      end
    end
  end
end