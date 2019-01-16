module Pohoda
  module Parsers
    module Inv
      class InvoiceAdvancePaymentItemType
        include ParserCore::BaseParser

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

        def source_document
          submodel_at(Typ::SourceDocumentType, 'inv:sourceDocument')
        end

        def quantity
          at 'inv:quantity'
        end

        def quantity_attributes
          attributes_at 'inv:quantity'
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
          submodel_at(Typ::TypeCurrencyHomeItem2, 'inv:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyHomeItem2, 'inv:foreignCurrency')
        end

        def note
          at 'inv:note'
        end

        def note_attributes
          attributes_at 'inv:note'
        end

        def sym_par
          at 'inv:symPar'
        end

        def sym_par_attributes
          attributes_at 'inv:symPar'
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

        def centre
          submodel_at(Typ::RefType, 'inv:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'inv:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'inv:contract')
        end

        def voucher_eet
          at 'inv:voucherEET'
        end

        def voucher_eet_attributes
          attributes_at 'inv:voucherEET'
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['inv:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'inv:id'
          hash[:id_attributes] = id_attributes if has? 'inv:id'
          hash[:ext_id] = ext_id if has? 'inv:extId'
          hash[:ext_id_attributes] = ext_id_attributes if has? 'inv:extId'
          hash[:source_document] = source_document.to_h if has? 'inv:sourceDocument'
          hash[:quantity] = quantity if has? 'inv:quantity'
          hash[:quantity_attributes] = quantity_attributes if has? 'inv:quantity'
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
          hash[:note] = note if has? 'inv:note'
          hash[:note_attributes] = note_attributes if has? 'inv:note'
          hash[:sym_par] = sym_par if has? 'inv:symPar'
          hash[:sym_par_attributes] = sym_par_attributes if has? 'inv:symPar'
          hash[:accounting] = accounting.to_h if has? 'inv:accounting'
          hash[:classification_vat] = classification_vat.to_h if has? 'inv:classificationVAT'
          hash[:classification_kvdph] = classification_kvdph.to_h if has? 'inv:classificationKVDPH'
          hash[:centre] = centre.to_h if has? 'inv:centre'
          hash[:activity] = activity.to_h if has? 'inv:activity'
          hash[:contract] = contract.to_h if has? 'inv:contract'
          hash[:voucher_eet] = voucher_eet if has? 'inv:voucherEET'
          hash[:voucher_eet_attributes] = voucher_eet_attributes if has? 'inv:voucherEET'
          hash[:parameters] = parameters.map(&:to_h) if has? 'inv:parameters'

          hash
        end
      end
    end
  end
end