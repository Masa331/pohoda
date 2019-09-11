module Pohoda
  module Builders
    module Ord
      class OrderItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('ord:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('ord:extId', data[:ext_id], data[:ext_id_attributes]) if data.key? :ext_id
          root << build_element('ord:text', data[:text], data[:text_attributes]) if data.key? :text
          root << build_element('ord:quantity', data[:quantity], data[:quantity_attributes]) if data.key? :quantity
          root << build_element('ord:delivered', data[:delivered], data[:delivered_attributes]) if data.key? :delivered
          root << build_element('ord:unit', data[:unit], data[:unit_attributes]) if data.key? :unit
          root << build_element('ord:coefficient', data[:coefficient], data[:coefficient_attributes]) if data.key? :coefficient
          root << build_element('ord:payVAT', data[:pay_vat], data[:pay_vat_attributes]) if data.key? :pay_vat
          root << build_element('ord:rateVAT', data[:rate_vat], data[:rate_vat_attributes]) if data.key? :rate_vat
          root << build_element('ord:percentVAT', data[:percent_vat], data[:percent_vat_attributes]) if data.key? :percent_vat
          root << build_element('ord:discountPercentage', data[:discount_percentage], data[:discount_percentage_attributes]) if data.key? :discount_percentage
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem.new('ord:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeignItem.new('ord:foreignCurrency', data[:foreign_currency]).builder
          end
          if data.key? :type_service_moss
            root << Typ::MOSStype.new('ord:typeServiceMOSS', data[:type_service_moss]).builder
          end
          root << build_element('ord:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('ord:code', data[:code], data[:code_attributes]) if data.key? :code
          if data.key? :stock_item
            root << Typ::StockItemType.new('ord:stockItem', data[:stock_item]).builder
          end
          if data.key? :link_to_stock
            root << Typ::LinkToStockType.new('ord:linkToStock', data[:link_to_stock]).builder
          end
          root << build_element('ord:PDP', data[:pdp], data[:pdp_attributes]) if data.key? :pdp
          root << build_element('ord:CodePDP', data[:code_pdp], data[:code_pdp_attributes]) if data.key? :code_pdp
          if data.key? :centre
            root << Typ::RefType.new('ord:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('ord:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('ord:contract', data[:contract]).builder
          end
          root << build_element('ord:EETItem', data[:eet_item], data[:eet_item_attributes]) if data.key? :eet_item
          if data.key? :parameters
            element = Ox::Element.new('ord:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end