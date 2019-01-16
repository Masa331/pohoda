module Pohoda
  module Parsers
    module Bnk
      class BankItemType
        include ParserCore::BaseParser

        def text
          at 'bnk:text'
        end

        def text_attributes
          attributes_at 'bnk:text'
        end

        def home_currency
          at 'bnk:homeCurrency'
        end

        def home_currency_attributes
          attributes_at 'bnk:homeCurrency'
        end

        def foreign_currency
          at 'bnk:foreignCurrency'
        end

        def foreign_currency_attributes
          attributes_at 'bnk:foreignCurrency'
        end

        def note
          at 'bnk:note'
        end

        def note_attributes
          attributes_at 'bnk:note'
        end

        def sym_par
          at 'bnk:symPar'
        end

        def sym_par_attributes
          attributes_at 'bnk:symPar'
        end

        def accounting
          submodel_at(Typ::RefType, 'bnk:accounting')
        end

        def classification_vat
          submodel_at(Typ::ClassificationVATType, 'bnk:classificationVAT')
        end

        def classification_kvdph
          submodel_at(Typ::RefType, 'bnk:classificationKVDPH')
        end

        def pdp
          at 'bnk:PDP'
        end

        def pdp_attributes
          attributes_at 'bnk:PDP'
        end

        def code_pdp
          at 'bnk:CodePDP'
        end

        def code_pdp_attributes
          attributes_at 'bnk:CodePDP'
        end

        def centre
          submodel_at(Typ::RefType, 'bnk:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'bnk:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'bnk:contract')
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['bnk:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:text] = text if has? 'bnk:text'
          hash[:text_attributes] = text_attributes if has? 'bnk:text'
          hash[:home_currency] = home_currency if has? 'bnk:homeCurrency'
          hash[:home_currency_attributes] = home_currency_attributes if has? 'bnk:homeCurrency'
          hash[:foreign_currency] = foreign_currency if has? 'bnk:foreignCurrency'
          hash[:foreign_currency_attributes] = foreign_currency_attributes if has? 'bnk:foreignCurrency'
          hash[:note] = note if has? 'bnk:note'
          hash[:note_attributes] = note_attributes if has? 'bnk:note'
          hash[:sym_par] = sym_par if has? 'bnk:symPar'
          hash[:sym_par_attributes] = sym_par_attributes if has? 'bnk:symPar'
          hash[:accounting] = accounting.to_h if has? 'bnk:accounting'
          hash[:classification_vat] = classification_vat.to_h if has? 'bnk:classificationVAT'
          hash[:classification_kvdph] = classification_kvdph.to_h if has? 'bnk:classificationKVDPH'
          hash[:pdp] = pdp if has? 'bnk:PDP'
          hash[:pdp_attributes] = pdp_attributes if has? 'bnk:PDP'
          hash[:code_pdp] = code_pdp if has? 'bnk:CodePDP'
          hash[:code_pdp_attributes] = code_pdp_attributes if has? 'bnk:CodePDP'
          hash[:centre] = centre.to_h if has? 'bnk:centre'
          hash[:activity] = activity.to_h if has? 'bnk:activity'
          hash[:contract] = contract.to_h if has? 'bnk:contract'
          hash[:parameters] = parameters.map(&:to_h) if has? 'bnk:parameters'

          hash
        end
      end
    end
  end
end