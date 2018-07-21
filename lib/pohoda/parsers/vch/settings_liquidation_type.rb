module Pohoda
  module Parsers
    module Vch
      class SettingsLiquidationType
        include ParserCore::BaseParser

        def source_agenda
          at 'vch:sourceAgenda'
        end

        def source_agenda_attributes
          attributes_at 'vch:sourceAgenda'
        end

        def source_document
          submodel_at(Typ::SourceDocumentType, 'vch:sourceDocument')
        end

        def liquidation_price
          at 'vch:liquidationPrice'
        end

        def liquidation_price_attributes
          attributes_at 'vch:liquidationPrice'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:source_agenda] = source_agenda if has? 'vch:sourceAgenda'
          hash[:source_agenda_attributes] = source_agenda_attributes if has? 'vch:sourceAgenda'
          hash[:source_document] = source_document.to_h if has? 'vch:sourceDocument'
          hash[:liquidation_price] = liquidation_price if has? 'vch:liquidationPrice'
          hash[:liquidation_price_attributes] = liquidation_price_attributes if has? 'vch:liquidationPrice'

          hash
        end
      end
    end
  end
end