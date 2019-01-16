module Pohoda
  module Builders
    module Vch
      class VoucherItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('vch:text', data[:text], data[:text_attributes]) if data.key? :text
          root << build_element('vch:quantity', data[:quantity], data[:quantity_attributes]) if data.key? :quantity
          root << build_element('vch:unit', data[:unit], data[:unit_attributes]) if data.key? :unit
          root << build_element('vch:coefficient', data[:coefficient], data[:coefficient_attributes]) if data.key? :coefficient
          root << build_element('vch:payVAT', data[:pay_vat], data[:pay_vat_attributes]) if data.key? :pay_vat
          root << build_element('vch:rateVAT', data[:rate_vat], data[:rate_vat_attributes]) if data.key? :rate_vat
          root << build_element('vch:percentVAT', data[:percent_vat], data[:percent_vat_attributes]) if data.key? :percent_vat
          root << build_element('vch:discountPercentage', data[:discount_percentage], data[:discount_percentage_attributes]) if data.key? :discount_percentage
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem.new('vch:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeignItem.new('vch:foreignCurrency', data[:foreign_currency]).builder
          end
          if data.key? :type_service_moss
            root << Typ::MOSStype.new('vch:typeServiceMOSS', data[:type_service_moss]).builder
          end
          root << build_element('vch:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('vch:code', data[:code], data[:code_attributes]) if data.key? :code
          root << build_element('vch:symPar', data[:sym_par], data[:sym_par_attributes]) if data.key? :sym_par
          if data.key? :stock_item
            root << Typ::StockItemType.new('vch:stockItem', data[:stock_item]).builder
          end
          if data.key? :accounting
            root << Typ::RefType.new('vch:accounting', data[:accounting]).builder
          end
          if data.key? :classification_vat
            root << Typ::ClassificationVATType.new('vch:classificationVAT', data[:classification_vat]).builder
          end
          if data.key? :classification_kvdph
            root << Typ::RefType.new('vch:classificationKVDPH', data[:classification_kvdph]).builder
          end
          root << build_element('vch:PDP', data[:pdp], data[:pdp_attributes]) if data.key? :pdp
          root << build_element('vch:CodePDP', data[:code_pdp], data[:code_pdp_attributes]) if data.key? :code_pdp
          if data.key? :centre
            root << Typ::RefType.new('vch:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('vch:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('vch:contract', data[:contract]).builder
          end
          root << build_element('vch:EETItem', data[:eet_item], data[:eet_item_attributes]) if data.key? :eet_item
          if data.key? :parameters
            element = Ox::Element.new('vch:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end