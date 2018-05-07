module Pohoda
  module Builders
    module Inv
      class InvoiceItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :link
            root << Typ::LinkItemType.new('link', data[:link]).builder
          end
          root << build_element('inv:id', data[:id]) if data.key? :id
          root << build_element('inv:text', data[:text]) if data.key? :text
          root << build_element('inv:quantity', data[:quantity]) if data.key? :quantity
          root << build_element('inv:unit', data[:unit]) if data.key? :unit
          root << build_element('inv:coefficient', data[:coefficient]) if data.key? :coefficient
          root << build_element('inv:payVAT', data[:pay_vat]) if data.key? :pay_vat
          root << build_element('inv:rateVAT', data[:rate_vat]) if data.key? :rate_vat
          root << build_element('inv:percentVAT', data[:percent_vat]) if data.key? :percent_vat
          root << build_element('inv:discountPercentage', data[:discount_percentage]) if data.key? :discount_percentage
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem.new('homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeignItem.new('foreignCurrency', data[:foreign_currency]).builder
          end
          if data.key? :type_service_moss
            root << Typ::MOSStype.new('typeServiceMOSS', data[:type_service_moss]).builder
          end
          root << build_element('inv:note', data[:note]) if data.key? :note
          root << build_element('inv:code', data[:code]) if data.key? :code
          root << build_element('inv:guarantee', data[:guarantee]) if data.key? :guarantee
          root << build_element('inv:guaranteeType', data[:guarantee_type]) if data.key? :guarantee_type
          if data.key? :stock_item
            root << Typ::StockItemType.new('stockItem', data[:stock_item]).builder
          end
          if data.key? :accounting
            root << Typ::RefType.new('accounting', data[:accounting]).builder
          end
          if data.key? :classification_vat
            root << Typ::ClassificationVATType.new('classificationVAT', data[:classification_vat]).builder
          end
          if data.key? :classification_kvdph
            root << Typ::RefType.new('classificationKVDPH', data[:classification_kvdph]).builder
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
          root << build_element('inv:expirationDate', data[:expiration_date]) if data.key? :expiration_date
          if data.key? :intrastat_item
            root << Inv::IntrastatItemType.new('intrastatItem', data[:intrastat_item]).builder
          end
          root << build_element('inv:EETItem', data[:eet_item]) if data.key? :eet_item
          if data.key? :parameters
            root << Typ::ParametersType.new('parameters', data[:parameters]).builder
          end

          root
        end
      end
    end
  end
end