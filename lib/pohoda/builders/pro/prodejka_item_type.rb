module Pohoda
  module Builders
    module Pro
      class ProdejkaItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('pro:text', data[:text], data[:text_attributes]) if data.key? :text
          root << build_element('pro:quantity', data[:quantity], data[:quantity_attributes]) if data.key? :quantity
          root << build_element('pro:unit', data[:unit], data[:unit_attributes]) if data.key? :unit
          root << build_element('pro:coefficient', data[:coefficient], data[:coefficient_attributes]) if data.key? :coefficient
          root << build_element('pro:payVAT', data[:pay_vat], data[:pay_vat_attributes]) if data.key? :pay_vat
          root << build_element('pro:rateVAT', data[:rate_vat], data[:rate_vat_attributes]) if data.key? :rate_vat
          root << build_element('pro:percentVAT', data[:percent_vat], data[:percent_vat_attributes]) if data.key? :percent_vat
          root << build_element('pro:discountPercentage', data[:discount_percentage], data[:discount_percentage_attributes]) if data.key? :discount_percentage
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem.new('pro:homeCurrency', data[:home_currency]).builder
          end
          root << build_element('pro:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('pro:code', data[:code], data[:code_attributes]) if data.key? :code
          root << build_element('pro:guarantee', data[:guarantee], data[:guarantee_attributes]) if data.key? :guarantee
          root << build_element('pro:guaranteeType', data[:guarantee_type], data[:guarantee_type_attributes]) if data.key? :guarantee_type
          if data.key? :stock_item
            root << Typ::StockItemType.new('pro:stockItem', data[:stock_item]).builder
          end
          if data.key? :accounting
            root << Typ::RefType.new('pro:accounting', data[:accounting]).builder
          end
          if data.key? :centre
            root << Typ::RefType.new('pro:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('pro:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('pro:contract', data[:contract]).builder
          end
          root << build_element('pro:expirationDate', data[:expiration_date], data[:expiration_date_attributes]) if data.key? :expiration_date
          root << build_element('pro:EETItem', data[:eet_item], data[:eet_item_attributes]) if data.key? :eet_item
          if data.key? :parameters
            element = Ox::Element.new('pro:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end