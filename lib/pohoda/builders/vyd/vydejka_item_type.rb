module Pohoda
  module Builders
    module Vyd
      class VydejkaItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('vyd:id', data[:id]) if data.key? :id
          root << build_element('vyd:text', data[:text]) if data.key? :text
          root << build_element('vyd:quantity', data[:quantity]) if data.key? :quantity
          root << build_element('vyd:unit', data[:unit]) if data.key? :unit
          root << build_element('vyd:coefficient', data[:coefficient]) if data.key? :coefficient
          root << build_element('vyd:payVAT', data[:pay_vat]) if data.key? :pay_vat
          root << build_element('vyd:rateVAT', data[:rate_vat]) if data.key? :rate_vat
          root << build_element('vyd:percentVAT', data[:percent_vat]) if data.key? :percent_vat
          root << build_element('vyd:discountPercentage', data[:discount_percentage]) if data.key? :discount_percentage
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem.new('vyd:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeignItem.new('vyd:foreignCurrency', data[:foreign_currency]).builder
          end
          if data.key? :type_service_moss
            root << Typ::MOSStype.new('vyd:typeServiceMOSS', data[:type_service_moss]).builder
          end
          root << build_element('vyd:note', data[:note]) if data.key? :note
          root << build_element('vyd:code', data[:code]) if data.key? :code
          root << build_element('vyd:guarantee', data[:guarantee]) if data.key? :guarantee
          root << build_element('vyd:guaranteeType', data[:guarantee_type]) if data.key? :guarantee_type
          if data.key? :stock_item
            root << Typ::StockItemType.new('vyd:stockItem', data[:stock_item]).builder
          end
          root << build_element('vyd:acc', data[:acc]) if data.key? :acc
          if data.key? :centre
            root << Typ::RefType.new('vyd:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('vyd:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('vyd:contract', data[:contract]).builder
          end
          root << build_element('vyd:expirationDate', data[:expiration_date]) if data.key? :expiration_date
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