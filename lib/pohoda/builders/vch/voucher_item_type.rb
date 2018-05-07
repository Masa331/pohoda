module Pohoda
  module Builders
    module Vch
      class VoucherItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('vch:text', data[:text]) if data.key? :text
          root << build_element('vch:quantity', data[:quantity]) if data.key? :quantity
          root << build_element('vch:unit', data[:unit]) if data.key? :unit
          root << build_element('vch:coefficient', data[:coefficient]) if data.key? :coefficient
          root << build_element('vch:payVAT', data[:pay_vat]) if data.key? :pay_vat
          root << build_element('vch:rateVAT', data[:rate_vat]) if data.key? :rate_vat
          root << build_element('vch:percentVAT', data[:percent_vat]) if data.key? :percent_vat
          root << build_element('vch:discountPercentage', data[:discount_percentage]) if data.key? :discount_percentage
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem.new('homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeignItem.new('foreignCurrency', data[:foreign_currency]).builder
          end
          if data.key? :type_service_moss
            root << Typ::MOSStype.new('typeServiceMOSS', data[:type_service_moss]).builder
          end
          root << build_element('vch:note', data[:note]) if data.key? :note
          root << build_element('vch:code', data[:code]) if data.key? :code
          root << build_element('vch:symPar', data[:sym_par]) if data.key? :sym_par
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
          root << build_element('vch:EETItem', data[:eet_item]) if data.key? :eet_item
          if data.key? :parameters
            root << Typ::ParametersType.new('parameters', data[:parameters]).builder
          end

          root
        end
      end
    end
  end
end