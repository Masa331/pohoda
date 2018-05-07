module Pohoda
  module Parsers
    module Rdc
      class ListVersionType
        include ParserCore::BaseParser

        def import_details
          submodel_at(Rdc::ImportDetailsType, 'rdc:importDetails')
        end

        def parts
          submodel_at(Rdc::PartsType, 'rdc:parts')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:import_details] = import_details.to_h_with_attrs if has? 'rdc:importDetails'
          hash[:parts] = parts.to_h_with_attrs if has? 'rdc:parts'

          hash
        end
      end
    end
  end
end