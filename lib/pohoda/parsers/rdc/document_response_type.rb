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

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:import_details] = import_details.map(&:to_h_with_attrs) if has? 'rdc:importDetails'
          hash[:produced_details] = produced_details.to_h_with_attrs if has? 'rdc:producedDetails'

          hash
        end
      end
    end
  end
end