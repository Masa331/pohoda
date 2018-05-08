module Pohoda
  module Parsers
    module Act
      class AccountingItemType
        include ParserCore::BaseParser

        def id
          at 'act:id'
        end

        def source
          at 'act:source'
        end

        def number
          submodel_at(Typ::NumberType, 'act:number')
        end

        def sym_par
          at 'act:symPar'
        end

        def text
          at 'act:text'
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

        def address
          submodel_at(Typ::Address, 'act:address')
        end

        def date
          at 'act:date'
        end

        def date_tax
          at 'act:dateTax'
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

        def parameters
          array_of_at(Typ::ParameterDocType, ['act:parameters', 'typ:parameter'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'act:id'
          hash[:source] = source if has? 'act:source'
          hash[:number] = number.to_h_with_attrs if has? 'act:number'
          hash[:sym_par] = sym_par if has? 'act:symPar'
          hash[:text] = text if has? 'act:text'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'act:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'act:foreignCurrency'
          hash[:accounting] = accounting if has? 'act:accounting'
          hash[:address] = address.to_h_with_attrs if has? 'act:address'
          hash[:date] = date if has? 'act:date'
          hash[:date_tax] = date_tax if has? 'act:dateTax'
          hash[:centre] = centre.to_h_with_attrs if has? 'act:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'act:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'act:contract'
          hash[:note] = note if has? 'act:note'
          hash[:parameters] = parameters.map(&:to_h_with_attrs) if has? 'act:parameters'

          hash
        end
      end
    end
  end
end