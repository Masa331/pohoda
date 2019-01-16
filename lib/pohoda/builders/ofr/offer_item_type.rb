module Pohoda
  module Builders
    module Ofr
      class OfferItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('ofr:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('ofr:text', data[:text], data[:text_attributes]) if data.key? :text
          root << build_element('ofr:quantity', data[:quantity], data[:quantity_attributes]) if data.key? :quantity
          root << build_element('ofr:unit', data[:unit], data[:unit_attributes]) if data.key? :unit
          root << build_element('ofr:coefficient', data[:coefficient], data[:coefficient_attributes]) if data.key? :coefficient
          root << build_element('ofr:payVAT', data[:pay_vat], data[:pay_vat_attributes]) if data.key? :pay_vat
          root << build_element('ofr:rateVAT', data[:rate_vat], data[:rate_vat_attributes]) if data.key? :rate_vat
          root << build_element('ofr:percentVAT', data[:percent_vat], data[:percent_vat_attributes]) if data.key? :percent_vat
          root << build_element('ofr:discountPercentage', data[:discount_percentage], data[:discount_percentage_attributes]) if data.key? :discount_percentage
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem.new('ofr:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeignItem.new('ofr:foreignCurrency', data[:foreign_currency]).builder
          end
          if data.key? :type_service_moss
            root << Typ::MOSStype.new('ofr:typeServiceMOSS', data[:type_service_moss]).builder
          end
          root << build_element('ofr:PDP', data[:pdp], data[:pdp_attributes]) if data.key? :pdp
          root << build_element('ofr:CodePDP', data[:code_pdp], data[:code_pdp_attributes]) if data.key? :code_pdp
          if data.key? :centre
            root << Typ::RefType.new('ofr:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('ofr:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('ofr:contract', data[:contract]).builder
          end
          root << build_element('ofr:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('ofr:code', data[:code], data[:code_attributes]) if data.key? :code
          if data.key? :stock_item
            root << Typ::StockItemType.new('ofr:stockItem', data[:stock_item]).builder
          end
          root << build_element('ofr:EETItem', data[:eet_item], data[:eet_item_attributes]) if data.key? :eet_item
          if data.key? :parameters
            element = Ox::Element.new('ofr:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end