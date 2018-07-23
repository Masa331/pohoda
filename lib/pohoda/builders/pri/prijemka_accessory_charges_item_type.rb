module Pohoda
  module Builders
    module Pri
      class PrijemkaAccessoryChargesItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('pri:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('pri:quantity', data[:quantity], data[:quantity_attributes]) if data.key? :quantity
          root << build_element('pri:payVAT', data[:pay_vat], data[:pay_vat_attributes]) if data.key? :pay_vat
          root << build_element('pri:rateVAT', data[:rate_vat], data[:rate_vat_attributes]) if data.key? :rate_vat
          root << build_element('pri:percentVAT', data[:percent_vat], data[:percent_vat_attributes]) if data.key? :percent_vat
          root << build_element('pri:discountPercentage', data[:discount_percentage], data[:discount_percentage_attributes]) if data.key? :discount_percentage
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem.new('pri:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeignItem.new('pri:foreignCurrency', data[:foreign_currency]).builder
          end
          root << build_element('pri:note', data[:note], data[:note_attributes]) if data.key? :note
          if data.key? :centre
            root << Typ::RefType.new('pri:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('pri:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('pri:contract', data[:contract]).builder
          end
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