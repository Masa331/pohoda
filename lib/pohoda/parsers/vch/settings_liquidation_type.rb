module Pohoda
  module Parsers
    module Vch
      class SettingsLiquidationType
        include ParserCore::BaseParser

        def source_agenda
          at 'vch:sourceAgenda'
        end

        def source_document
          submodel_at(Typ::SourceDocumentType, 'vch:sourceDocument')
        end

        def liquidation_price
          at 'vch:liquidationPrice'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:source_agenda] = source_agenda if has? 'vch:sourceAgenda'
          hash[:source_document] = source_document.to_h_with_attrs if has? 'vch:sourceDocument'
          hash[:liquidation_price] = liquidation_price if has? 'vch:liquidationPrice'

          hash
        end
      end
    end
  end
end