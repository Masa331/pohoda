module Pohoda
  module Parsers
    module Rdc
      class DocumentResponseType
        include ParserCore::BaseParser

        def import_details
          array_of_at(Rdc::DetailType, ['rdc:importDetails', 'rdc:detail'])
        end

        def produced_details
          submodel_at(Rdc::ProducedDetailsType, 'rdc:producedDetails')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:import_details] = import_details.map(&:to_h) if has? 'rdc:importDetails'
          hash[:produced_details] = produced_details.to_h if has? 'rdc:producedDetails'

          hash
        end
      end
    end
  end
end