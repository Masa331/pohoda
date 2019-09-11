module Pohoda
  module Parsers
    module Inv
      class InvoiceItemType
        include ParserCore::BaseParser

        def link
          submodel_at(Typ::LinkItemType, 'inv:link')
        end

        def linked_document
          submodel_at(Typ::LinkedDocumentType, 'inv:linkedDocument')
        end

        def id
          at 'inv:id'
        end

        def id_attributes
          attributes_at 'inv:id'
        end

        def ext_id
          at 'inv:extId'
        end

        def ext_id_attributes
          attributes_at 'inv:extId'
        end

        def text
          at 'inv:text'
        end

        def text_attributes
          attributes_at 'inv:text'
        end

        def quantity
          at 'inv:quantity'
        end

        def quantity_attributes
          attributes_at 'inv:quantity'
        end

        def unit
          at 'inv:unit'
        end

        def unit_attributes
          attributes_at 'inv:unit'
        end

        def coefficient
          at 'inv:coefficient'
        end

        def coefficient_attributes
          attributes_at 'inv:coefficient'
        end

        def pay_vat
          at 'inv:payVAT'
        end

        def pay_vat_attributes
          attributes_at 'inv:payVAT'
        end

        def rate_vat
          at 'inv:rateVAT'
        end

        def rate_vat_attributes
          attributes_at 'inv:rateVAT'
        end

        def percent_vat
          at 'inv:percentVAT'
        end

        def percent_vat_attributes
          attributes_at 'inv:percentVAT'
        end

        def discount_percentage
          at 'inv:discountPercentage'
        end

        def discount_percentage_attributes
          attributes_at 'inv:discountPercentage'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHomeItem, 'inv:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeignItem, 'inv:foreignCurrency')
        end

        def type_service_moss
          submodel_at(Typ::MOSStype, 'inv:typeServiceMOSS')
        end

        def note
          at 'inv:note'
        end

        def note_attributes
          attributes_at 'inv:note'
        end

        def code
          at 'inv:code'
        end

        def code_attributes
          attributes_at 'inv:code'
        end

        def guarantee
          at 'inv:guarantee'
        end

        def guarantee_attributes
          attributes_at 'inv:guarantee'
        end

        def guarantee_type
          at 'inv:guaranteeType'
        end

        def guarantee_type_attributes
          attributes_at 'inv:guaranteeType'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'inv:stockItem')
        end

        def link_to_stock
          submodel_at(Typ::LinkToStockType, 'inv:linkToStock')
        end

        def accounting
          submodel_at(Typ::RefType, 'inv:accounting')
        end

        def classification_vat
          submodel_at(Typ::ClassificationVATType, 'inv:classificationVAT')
        end

        def classification_kvdph
          submodel_at(Typ::RefType, 'inv:classificationKVDPH')
        end

        def pdp
          at 'inv:PDP'
        end

        def pdp_attributes
          attributes_at 'inv:PDP'
        end

        def code_pdp
          at 'inv:CodePDP'
        end

        def code_pdp_attributes
          attributes_at 'inv:CodePDP'
        end

        def centre
          submodel_at(Typ::RefType, 'inv:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'inv:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'inv:contract')
        end

        def expiration_date
          at 'inv:expirationDate'
        end

        def expiration_date_attributes
          attributes_at 'inv:expirationDate'
        end

        def intrastat_item
          submodel_at(Inv::IntrastatItemType, 'inv:intrastatItem')
        end

        def eet_item
          at 'inv:EETItem'
        end

        def eet_item_attributes
          attributes_at 'inv:EETItem'
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['inv:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:link] = link.to_h if has? 'inv:link'
          hash[:linked_document] = linked_document.to_h if has? 'inv:linkedDocument'
          hash[:id] = id if has? 'inv:id'
          hash[:id_attributes] = id_attributes if has? 'inv:id'
          hash[:ext_id] = ext_id if has? 'inv:extId'
          hash[:ext_id_attributes] = ext_id_attributes if has? 'inv:extId'
          hash[:text] = text if has? 'inv:text'
          hash[:text_attributes] = text_attributes if has? 'inv:text'
          hash[:quantity] = quantity if has? 'inv:quantity'
          hash[:quantity_attributes] = quantity_attributes if has? 'inv:quantity'
          hash[:unit] = unit if has? 'inv:unit'
          hash[:unit_attributes] = unit_attributes if has? 'inv:unit'
          hash[:coefficient] = coefficient if has? 'inv:coefficient'
          hash[:coefficient_attributes] = coefficient_attributes if has? 'inv:coefficient'
          hash[:pay_vat] = pay_vat if has? 'inv:payVAT'
          hash[:pay_vat_attributes] = pay_vat_attributes if has? 'inv:payVAT'
          hash[:rate_vat] = rate_vat if has? 'inv:rateVAT'
          hash[:rate_vat_attributes] = rate_vat_attributes if has? 'inv:rateVAT'
          hash[:percent_vat] = percent_vat if has? 'inv:percentVAT'
          hash[:percent_vat_attributes] = percent_vat_attributes if has? 'inv:percentVAT'
          hash[:discount_percentage] = discount_percentage if has? 'inv:discountPercentage'
          hash[:discount_percentage_attributes] = discount_percentage_attributes if has? 'inv:discountPercentage'
          hash[:home_currency] = home_currency.to_h if has? 'inv:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'inv:foreignCurrency'
          hash[:type_service_moss] = type_service_moss.to_h if has? 'inv:typeServiceMOSS'
          hash[:note] = note if has? 'inv:note'
          hash[:note_attributes] = note_attributes if has? 'inv:note'
          hash[:code] = code if has? 'inv:code'
          hash[:code_attributes] = code_attributes if has? 'inv:code'
          hash[:guarantee] = guarantee if has? 'inv:guarantee'
          hash[:guarantee_attributes] = guarantee_attributes if has? 'inv:guarantee'
          hash[:guarantee_type] = guarantee_type if has? 'inv:guaranteeType'
          hash[:guarantee_type_attributes] = guarantee_type_attributes if has? 'inv:guaranteeType'
          hash[:stock_item] = stock_item.to_h if has? 'inv:stockItem'
          hash[:link_to_stock] = link_to_stock.to_h if has? 'inv:linkToStock'
          hash[:accounting] = accounting.to_h if has? 'inv:accounting'
          hash[:classification_vat] = classification_vat.to_h if has? 'inv:classificationVAT'
          hash[:classification_kvdph] = classification_kvdph.to_h if has? 'inv:classificationKVDPH'
          hash[:pdp] = pdp if has? 'inv:PDP'
          hash[:pdp_attributes] = pdp_attributes if has? 'inv:PDP'
          hash[:code_pdp] = code_pdp if has? 'inv:CodePDP'
          hash[:code_pdp_attributes] = code_pdp_attributes if has? 'inv:CodePDP'
          hash[:centre] = centre.to_h if has? 'inv:centre'
          hash[:activity] = activity.to_h if has? 'inv:activity'
          hash[:contract] = contract.to_h if has? 'inv:contract'
          hash[:expiration_date] = expiration_date if has? 'inv:expirationDate'
          hash[:expiration_date_attributes] = expiration_date_attributes if has? 'inv:expirationDate'
          hash[:intrastat_item] = intrastat_item.to_h if has? 'inv:intrastatItem'
          hash[:eet_item] = eet_item if has? 'inv:EETItem'
          hash[:eet_item_attributes] = eet_item_attributes if has? 'inv:EETItem'
          hash[:parameters] = parameters.map(&:to_h) if has? 'inv:parameters'

          hash
        end
      end
    end
  end
end