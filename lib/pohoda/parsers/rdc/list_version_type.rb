module Pohoda
  module Parsers
    module Rdc
      class ListVersionType
        include ParserCore::BaseParser

        def import_details
          array_of_at(Rdc::DetailType, ['rdc:importDetails', 'rdc:detail'])
        end

        def parts
          array_of_at(String, ['rdc:parts', 'rdc:part'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:import_details] = import_details.map(&:to_h) if has? 'rdc:importDetails'
          hash[:parts] = parts if has? 'rdc:parts'

          hash
        end
      end
    end
  end
end