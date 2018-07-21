module Pohoda
  module Parsers
    module Vch
      class LiquidationItemType
        include ParserCore::BaseParser

        def text
          at 'vch:text'
        end

        def text_attributes
          attributes_at 'vch:text'
        end

        def quantity
          at 'vch:quantity'
        end

        def quantity_attributes
          attributes_at 'vch:quantity'
        end

        def pay_vat
          at 'vch:payVAT'
        end

        def pay_vat_attributes
          attributes_at 'vch:payVAT'
        end

        def rate_vat
          at 'vch:rateVAT'
        end

        def rate_vat_attributes
          attributes_at 'vch:rateVAT'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHomeItem2, 'vch:homeCurrency')
        end

        def note
          at 'vch:note'
        end

        def note_attributes
          attributes_at 'vch:note'
        end

        def sym_par
          at 'vch:symPar'
        end

        def sym_par_attributes
          attributes_at 'vch:symPar'
        end

        def accounting
          submodel_at(Typ::RefType, 'vch:accounting')
        end

        def classification_vat
          submodel_at(Typ::ClassificationVATType, 'vch:classificationVAT')
        end

        def classification_kvdph
          submodel_at(Typ::RefType, 'vch:classificationKVDPH')
        end

        def centre
          submodel_at(Typ::RefType, 'vch:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'vch:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'vch:contract')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:text] = text if has? 'vch:text'
          hash[:text_attributes] = text_attributes if has? 'vch:text'
          hash[:quantity] = quantity if has? 'vch:quantity'
          hash[:quantity_attributes] = quantity_attributes if has? 'vch:quantity'
          hash[:pay_vat] = pay_vat if has? 'vch:payVAT'
          hash[:pay_vat_attributes] = pay_vat_attributes if has? 'vch:payVAT'
          hash[:rate_vat] = rate_vat if has? 'vch:rateVAT'
          hash[:rate_vat_attributes] = rate_vat_attributes if has? 'vch:rateVAT'
          hash[:home_currency] = home_currency.to_h if has? 'vch:homeCurrency'
          hash[:note] = note if has? 'vch:note'
          hash[:note_attributes] = note_attributes if has? 'vch:note'
          hash[:sym_par] = sym_par if has? 'vch:symPar'
          hash[:sym_par_attributes] = sym_par_attributes if has? 'vch:symPar'
          hash[:accounting] = accounting.to_h if has? 'vch:accounting'
          hash[:classification_vat] = classification_vat.to_h if has? 'vch:classificationVAT'
          hash[:classification_kvdph] = classification_kvdph.to_h if has? 'vch:classificationKVDPH'
          hash[:centre] = centre.to_h if has? 'vch:centre'
          hash[:activity] = activity.to_h if has? 'vch:activity'
          hash[:contract] = contract.to_h if has? 'vch:contract'

          hash
        end
      end
    end
  end
end