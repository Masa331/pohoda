module Pohoda
  module Builders
    module Pri
      class PrijemkaItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('pri:id', data[:id]) if data.key? :id
          root << build_element('pri:text', data[:text]) if data.key? :text
          root << build_element('pri:quantity', data[:quantity]) if data.key? :quantity
          root << build_element('pri:unit', data[:unit]) if data.key? :unit
          root << build_element('pri:coefficient', data[:coefficient]) if data.key? :coefficient
          root << build_element('pri:payVAT', data[:pay_vat]) if data.key? :pay_vat
          root << build_element('pri:rateVAT', data[:rate_vat]) if data.key? :rate_vat
          root << build_element('pri:percentVAT', data[:percent_vat]) if data.key? :percent_vat
          root << build_element('pri:discountPercentage', data[:discount_percentage]) if data.key? :discount_percentage
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem.new('pri:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeignItem.new('pri:foreignCurrency', data[:foreign_currency]).builder
          end
          root << build_element('pri:note', data[:note]) if data.key? :note
          root << build_element('pri:code', data[:code]) if data.key? :code
          if data.key? :stock_item
            root << Typ::StockItemType.new('pri:stockItem', data[:stock_item]).builder
          end
          root << build_element('pri:acc', data[:acc]) if data.key? :acc
          if data.key? :centre
            root << Typ::RefType.new('pri:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('pri:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('pri:contract', data[:contract]).builder
          end
          root << build_element('pri:expirationDate', data[:expiration_date]) if data.key? :expiration_date
          if data.key? :parameters
            element = Ox::Element.new('pri:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end