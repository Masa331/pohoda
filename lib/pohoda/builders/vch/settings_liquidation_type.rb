module Pohoda
  module Builders
    module Vch
      class SettingsLiquidationType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('vch:sourceAgenda', data[:source_agenda], data[:source_agenda_attributes]) if data.key? :source_agenda
          if data.key? :source_document
            root << Typ::SourceDocumentType.new('vch:sourceDocument', data[:source_document]).builder
          end
          root << build_element('vch:liquidationPrice', data[:liquidation_price], data[:liquidation_price_attributes]) if data.key? :liquidation_price

          root
        end
      end
    end
  end
end