module Pohoda
  module Builders
    module Inv
      class InvoiceItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :link
            root << Typ::LinkItemType.new('inv:link', data[:link]).builder
          end
          if data.key? :linked_document
            root << Typ::LinkedDocumentType.new('inv:linkedDocument', data[:linked_document]).builder
          end
          root << build_element('inv:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('inv:extId', data[:ext_id], data[:ext_id_attributes]) if data.key? :ext_id
          root << build_element('inv:text', data[:text], data[:text_attributes]) if data.key? :text
          root << build_element('inv:quantity', data[:quantity], data[:quantity_attributes]) if data.key? :quantity
          root << build_element('inv:unit', data[:unit], data[:unit_attributes]) if data.key? :unit
          root << build_element('inv:coefficient', data[:coefficient], data[:coefficient_attributes]) if data.key? :coefficient
          root << build_element('inv:payVAT', data[:pay_vat], data[:pay_vat_attributes]) if data.key? :pay_vat
          root << build_element('inv:rateVAT', data[:rate_vat], data[:rate_vat_attributes]) if data.key? :rate_vat
          root << build_element('inv:percentVAT', data[:percent_vat], data[:percent_vat_attributes]) if data.key? :percent_vat
          root << build_element('inv:discountPercentage', data[:discount_percentage], data[:discount_percentage_attributes]) if data.key? :discount_percentage
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem.new('inv:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeignItem.new('inv:foreignCurrency', data[:foreign_currency]).builder
          end
          if data.key? :type_service_moss
            root << Typ::MOSStype.new('inv:typeServiceMOSS', data[:type_service_moss]).builder
          end
          root << build_element('inv:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('inv:code', data[:code], data[:code_attributes]) if data.key? :code
          root << build_element('inv:guarantee', data[:guarantee], data[:guarantee_attributes]) if data.key? :guarantee
          root << build_element('inv:guaranteeType', data[:guarantee_type], data[:guarantee_type_attributes]) if data.key? :guarantee_type
          if data.key? :stock_item
            root << Typ::StockItemType.new('inv:stockItem', data[:stock_item]).builder
          end
          if data.key? :link_to_stock
            root << Typ::LinkToStockType.new('inv:linkToStock', data[:link_to_stock]).builder
          end
          if data.key? :accounting
            root << Typ::RefType.new('inv:accounting', data[:accounting]).builder
          end
          if data.key? :classification_vat
            root << Typ::ClassificationVATType.new('inv:classificationVAT', data[:classification_vat]).builder
          end
          if data.key? :classification_kvdph
            root << Typ::RefType.new('inv:classificationKVDPH', data[:classification_kvdph]).builder
          end
          root << build_element('inv:PDP', data[:pdp], data[:pdp_attributes]) if data.key? :pdp
          root << build_element('inv:CodePDP', data[:code_pdp], data[:code_pdp_attributes]) if data.key? :code_pdp
          if data.key? :centre
            root << Typ::RefType.new('inv:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('inv:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('inv:contract', data[:contract]).builder
          end
          root << build_element('inv:expirationDate', data[:expiration_date], data[:expiration_date_attributes]) if data.key? :expiration_date
          if data.key? :intrastat_item
            root << Inv::IntrastatItemType.new('inv:intrastatItem', data[:intrastat_item]).builder
          end
          root << build_element('inv:EETItem', data[:eet_item], data[:eet_item_attributes]) if data.key? :eet_item
          if data.key? :parameters
            element = Ox::Element.new('inv:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end