module Pohoda
  module Parsers
    module Bnk
      class BankItemType
        include ParserCore::BaseParser

        def text
          at 'bnk:text'
        end

        def home_currency
          at 'bnk:homeCurrency'
        end

        def foreign_currency
          at 'bnk:foreignCurrency'
        end

        def note
          at 'bnk:note'
        end

        def sym_par
          at 'bnk:symPar'
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

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:text] = text if has? 'bnk:text'
          hash[:home_currency] = home_currency if has? 'bnk:homeCurrency'
          hash[:foreign_currency] = foreign_currency if has? 'bnk:foreignCurrency'
          hash[:note] = note if has? 'bnk:note'
          hash[:sym_par] = sym_par if has? 'bnk:symPar'
          hash[:accounting] = accounting.to_h_with_attrs if has? 'bnk:accounting'
          hash[:classification_vat] = classification_vat.to_h_with_attrs if has? 'bnk:classificationVAT'
          hash[:classification_kvdph] = classification_kvdph.to_h_with_attrs if has? 'bnk:classificationKVDPH'
          hash[:centre] = centre.to_h_with_attrs if has? 'bnk:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'bnk:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'bnk:contract'
          hash[:parameters] = parameters.map(&:to_h_with_attrs) if has? 'bnk:parameters'

          hash
        end
      end
    end
  end
end