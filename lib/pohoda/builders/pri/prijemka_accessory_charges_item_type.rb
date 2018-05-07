module Pohoda
  module Builders
    module Pri
      class PrijemkaAccessoryChargesItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('pri:id', data[:id]) if data.key? :id
          root << build_element('pri:quantity', data[:quantity]) if data.key? :quantity
          root << build_element('pri:payVAT', data[:pay_vat]) if data.key? :pay_vat
          root << build_element('pri:rateVAT', data[:rate_vat]) if data.key? :rate_vat
          root << build_element('pri:percentVAT', data[:percent_vat]) if data.key? :percent_vat
          root << build_element('pri:discountPercentage', data[:discount_percentage]) if data.key? :discount_percentage
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem.new('homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeignItem.new('foreignCurrency', data[:foreign_currency]).builder
          end
          root << build_element('pri:note', data[:note]) if data.key? :note
          if data.key? :centre
            root << Typ::RefType.new('centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('contract', data[:contract]).builder
          end
          if data.key? :parameters
            root << Typ::ParametersType.new('parameters', data[:parameters]).builder
          end

          root
        end
      end
    end
  end
end