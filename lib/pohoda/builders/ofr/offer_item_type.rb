module Pohoda
  module Builders
    module Ofr
      class OfferItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('ofr:id', data[:id]) if data.key? :id
          root << build_element('ofr:text', data[:text]) if data.key? :text
          root << build_element('ofr:quantity', data[:quantity]) if data.key? :quantity
          root << build_element('ofr:unit', data[:unit]) if data.key? :unit
          root << build_element('ofr:coefficient', data[:coefficient]) if data.key? :coefficient
          root << build_element('ofr:payVAT', data[:pay_vat]) if data.key? :pay_vat
          root << build_element('ofr:rateVAT', data[:rate_vat]) if data.key? :rate_vat
          root << build_element('ofr:percentVAT', data[:percent_vat]) if data.key? :percent_vat
          root << build_element('ofr:discountPercentage', data[:discount_percentage]) if data.key? :discount_percentage
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem.new('ofr:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeignItem.new('ofr:foreignCurrency', data[:foreign_currency]).builder
          end
          if data.key? :type_service_moss
            root << Typ::MOSStype.new('ofr:typeServiceMOSS', data[:type_service_moss]).builder
          end
          if data.key? :centre
            root << Typ::RefType.new('ofr:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('ofr:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('ofr:contract', data[:contract]).builder
          end
          root << build_element('ofr:note', data[:note]) if data.key? :note
          root << build_element('ofr:code', data[:code]) if data.key? :code
          if data.key? :stock_item
            root << Typ::StockItemType.new('ofr:stockItem', data[:stock_item]).builder
          end
          root << build_element('ofr:EETItem', data[:eet_item]) if data.key? :eet_item
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