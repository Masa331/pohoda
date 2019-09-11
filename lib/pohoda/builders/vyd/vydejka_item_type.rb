module Pohoda
  module Builders
    module Vyd
      class VydejkaItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :link
            root << Typ::LinkItemType.new('vyd:link', data[:link]).builder
          end
          root << build_element('vyd:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('vyd:text', data[:text], data[:text_attributes]) if data.key? :text
          root << build_element('vyd:quantity', data[:quantity], data[:quantity_attributes]) if data.key? :quantity
          root << build_element('vyd:unit', data[:unit], data[:unit_attributes]) if data.key? :unit
          root << build_element('vyd:coefficient', data[:coefficient], data[:coefficient_attributes]) if data.key? :coefficient
          root << build_element('vyd:payVAT', data[:pay_vat], data[:pay_vat_attributes]) if data.key? :pay_vat
          root << build_element('vyd:rateVAT', data[:rate_vat], data[:rate_vat_attributes]) if data.key? :rate_vat
          root << build_element('vyd:percentVAT', data[:percent_vat], data[:percent_vat_attributes]) if data.key? :percent_vat
          root << build_element('vyd:discountPercentage', data[:discount_percentage], data[:discount_percentage_attributes]) if data.key? :discount_percentage
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem.new('vyd:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeignItem.new('vyd:foreignCurrency', data[:foreign_currency]).builder
          end
          if data.key? :type_service_moss
            root << Typ::MOSStype.new('vyd:typeServiceMOSS', data[:type_service_moss]).builder
          end
          root << build_element('vyd:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('vyd:code', data[:code], data[:code_attributes]) if data.key? :code
          root << build_element('vyd:guarantee', data[:guarantee], data[:guarantee_attributes]) if data.key? :guarantee
          root << build_element('vyd:guaranteeType', data[:guarantee_type], data[:guarantee_type_attributes]) if data.key? :guarantee_type
          if data.key? :stock_item
            root << Typ::StockItemType.new('vyd:stockItem', data[:stock_item]).builder
          end
          if data.key? :link_to_stock
            root << Typ::LinkToStockType.new('vyd:linkToStock', data[:link_to_stock]).builder
          end
          root << build_element('vyd:acc', data[:acc], data[:acc_attributes]) if data.key? :acc
          root << build_element('vyd:PDP', data[:pdp], data[:pdp_attributes]) if data.key? :pdp
          root << build_element('vyd:CodePDP', data[:code_pdp], data[:code_pdp_attributes]) if data.key? :code_pdp
          if data.key? :centre
            root << Typ::RefType.new('vyd:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('vyd:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('vyd:contract', data[:contract]).builder
          end
          root << build_element('vyd:expirationDate', data[:expiration_date], data[:expiration_date_attributes]) if data.key? :expiration_date
          if data.key? :parameters
            element = Ox::Element.new('vyd:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end