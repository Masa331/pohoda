module Pohoda
  module Parsers
    module Rdc
      class DocumentResponseType
        include ParserCore::BaseParser

        def import_details
          submodel_at(Rdc::ImportDetailsType, 'rdc:importDetails')
        end

        def produced_details
          submodel_at(Rdc::ProducedDetailsType, 'rdc:producedDetails')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:import_details] = import_details.to_h_with_attrs if has? 'rdc:importDetails'
          hash[:produced_details] = produced_details.to_h_with_attrs if has? 'rdc:producedDetails'

          hash
        end
      end
    end
  end
end