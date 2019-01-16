module Pohoda
  module Builders
    module Int
      class IntDocItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('int:text', data[:text], data[:text_attributes]) if data.key? :text
          root << build_element('int:quantity', data[:quantity], data[:quantity_attributes]) if data.key? :quantity
          root << build_element('int:unit', data[:unit], data[:unit_attributes]) if data.key? :unit
          root << build_element('int:coefficient', data[:coefficient], data[:coefficient_attributes]) if data.key? :coefficient
          root << build_element('int:payVAT', data[:pay_vat], data[:pay_vat_attributes]) if data.key? :pay_vat
          root << build_element('int:rateVAT', data[:rate_vat], data[:rate_vat_attributes]) if data.key? :rate_vat
          root << build_element('int:percentVAT', data[:percent_vat], data[:percent_vat_attributes]) if data.key? :percent_vat
          root << build_element('int:discountPercentage', data[:discount_percentage], data[:discount_percentage_attributes]) if data.key? :discount_percentage
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem.new('int:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeignItem.new('int:foreignCurrency', data[:foreign_currency]).builder
          end
          if data.key? :type_service_moss
            root << Typ::MOSStype.new('int:typeServiceMOSS', data[:type_service_moss]).builder
          end
          root << build_element('int:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('int:code', data[:code], data[:code_attributes]) if data.key? :code
          root << build_element('int:symPar', data[:sym_par], data[:sym_par_attributes]) if data.key? :sym_par
          if data.key? :accounting
            root << Typ::RefType.new('int:accounting', data[:accounting]).builder
          end
          if data.key? :classification_vat
            root << Typ::ClassificationVATType.new('int:classificationVAT', data[:classification_vat]).builder
          end
          if data.key? :classification_kvdph
            root << Typ::RefType.new('int:classificationKVDPH', data[:classification_kvdph]).builder
          end
          root << build_element('int:PDP', data[:pdp], data[:pdp_attributes]) if data.key? :pdp
          root << build_element('int:CodePDP', data[:code_pdp], data[:code_pdp_attributes]) if data.key? :code_pdp
          if data.key? :centre
            root << Typ::RefType.new('int:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('int:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('int:contract', data[:contract]).builder
          end
          if data.key? :parameters
            element = Ox::Element.new('int:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end