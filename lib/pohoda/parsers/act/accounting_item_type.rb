module Pohoda
  module Parsers
    module Act
      class AccountingItemType
        include ParserCore::BaseParser

        def id
          at 'act:id'
        end

        def id_attributes
          attributes_at 'act:id'
        end

        def source
          at 'act:source'
        end

        def source_attributes
          attributes_at 'act:source'
        end

        def number
          submodel_at(Typ::NumberType, 'act:number')
        end

        def sym_par
          at 'act:symPar'
        end

        def sym_par_attributes
          attributes_at 'act:symPar'
        end

        def text
          at 'act:text'
        end

        def text_attributes
          attributes_at 'act:text'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHomeItem, 'act:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'act:foreignCurrency')
        end

        def accounting
          at 'act:accounting'
        end

        def accounting_attributes
          attributes_at 'act:accounting'
        end

        def address
          submodel_at(Typ::Address, 'act:address')
        end

        def date
          at 'act:date'
        end

        def date_attributes
          attributes_at 'act:date'
        end

        def date_tax
          at 'act:dateTax'
        end

        def date_tax_attributes
          attributes_at 'act:dateTax'
        end

        def centre
          submodel_at(Typ::RefType, 'act:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'act:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'act:contract')
        end

        def note
          at 'act:note'
        end

        def note_attributes
          attributes_at 'act:note'
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['act:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'act:id'
          hash[:id_attributes] = id_attributes if has? 'act:id'
          hash[:source] = source if has? 'act:source'
          hash[:source_attributes] = source_attributes if has? 'act:source'
          hash[:number] = number.to_h if has? 'act:number'
          hash[:sym_par] = sym_par if has? 'act:symPar'
          hash[:sym_par_attributes] = sym_par_attributes if has? 'act:symPar'
          hash[:text] = text if has? 'act:text'
          hash[:text_attributes] = text_attributes if has? 'act:text'
          hash[:home_currency] = home_currency.to_h if has? 'act:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'act:foreignCurrency'
          hash[:accounting] = accounting if has? 'act:accounting'
          hash[:accounting_attributes] = accounting_attributes if has? 'act:accounting'
          hash[:address] = address.to_h if has? 'act:address'
          hash[:date] = date if has? 'act:date'
          hash[:date_attributes] = date_attributes if has? 'act:date'
          hash[:date_tax] = date_tax if has? 'act:dateTax'
          hash[:date_tax_attributes] = date_tax_attributes if has? 'act:dateTax'
          hash[:centre] = centre.to_h if has? 'act:centre'
          hash[:activity] = activity.to_h if has? 'act:activity'
          hash[:contract] = contract.to_h if has? 'act:contract'
          hash[:note] = note if has? 'act:note'
          hash[:note_attributes] = note_attributes if has? 'act:note'
          hash[:parameters] = parameters.map(&:to_h) if has? 'act:parameters'

          hash
        end
      end
    end
  end
end