module Pohoda
  module Builders
    module Enq
      class EnquiryItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('enq:id', data[:id]) if data.key? :id
          root << build_element('enq:text', data[:text]) if data.key? :text
          root << build_element('enq:quantity', data[:quantity]) if data.key? :quantity
          root << build_element('enq:unit', data[:unit]) if data.key? :unit
          root << build_element('enq:coefficient', data[:coefficient]) if data.key? :coefficient
          root << build_element('enq:payVAT', data[:pay_vat]) if data.key? :pay_vat
          root << build_element('enq:rateVAT', data[:rate_vat]) if data.key? :rate_vat
          root << build_element('enq:percentVAT', data[:percent_vat]) if data.key? :percent_vat
          root << build_element('enq:discountPercentage', data[:discount_percentage]) if data.key? :discount_percentage
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem.new('homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeignItem.new('foreignCurrency', data[:foreign_currency]).builder
          end
          if data.key? :centre
            root << Typ::RefType.new('centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('contract', data[:contract]).builder
          end
          root << build_element('enq:note', data[:note]) if data.key? :note
          root << build_element('enq:code', data[:code]) if data.key? :code
          if data.key? :stock_item
            root << Typ::StockItemType.new('stockItem', data[:stock_item]).builder
          end
          root << build_element('enq:EETItem', data[:eet_item]) if data.key? :eet_item
          if data.key? :parameters
            root << Typ::ParametersType.new('parameters', data[:parameters]).builder
          end

          root
        end
      end
    end
  end
end