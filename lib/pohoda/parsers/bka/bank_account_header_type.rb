module Pohoda
  module Parsers
    module Bka
      class BankAccountHeaderType
        include ParserCore::BaseParser

        def id
          at 'bka:id'
        end

        def id_attributes
          attributes_at 'bka:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'bka:extId')
        end

        def ids
          at 'bka:ids'
        end

        def ids_attributes
          attributes_at 'bka:ids'
        end

        def number_account
          at 'bka:numberAccount'
        end

        def number_account_attributes
          attributes_at 'bka:numberAccount'
        end

        def code_bank
          at 'bka:codeBank'
        end

        def code_bank_attributes
          attributes_at 'bka:codeBank'
        end

        def name_bank
          at 'bka:nameBank'
        end

        def name_bank_attributes
          attributes_at 'bka:nameBank'
        end

        def sym_spec
          at 'bka:symSpec'
        end

        def sym_spec_attributes
          attributes_at 'bka:symSpec'
        end

        def iban
          at 'bka:IBAN'
        end

        def iban_attributes
          attributes_at 'bka:IBAN'
        end

        def swift
          at 'bka:SWIFT'
        end

        def swift_attributes
          attributes_at 'bka:SWIFT'
        end

        def analytic_account
          submodel_at(Typ::RefType, 'bka:analyticAccount')
        end

        def currency_bank_account
          submodel_at(Bka::CurrencyBankAccountType, 'bka:currencyBankAccount')
        end

        def cancelled
          at 'bka:cancelled'
        end

        def cancelled_attributes
          attributes_at 'bka:cancelled'
        end

        def homebanking
          at 'bka:homebanking'
        end

        def homebanking_attributes
          attributes_at 'bka:homebanking'
        end

        def pay_terminal
          at 'bka:payTerminal'
        end

        def pay_terminal_attributes
          attributes_at 'bka:payTerminal'
        end

        def note
          at 'bka:note'
        end

        def note_attributes
          attributes_at 'bka:note'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'bka:id'
          hash[:id_attributes] = id_attributes if has? 'bka:id'
          hash[:ext_id] = ext_id.to_h if has? 'bka:extId'
          hash[:ids] = ids if has? 'bka:ids'
          hash[:ids_attributes] = ids_attributes if has? 'bka:ids'
          hash[:number_account] = number_account if has? 'bka:numberAccount'
          hash[:number_account_attributes] = number_account_attributes if has? 'bka:numberAccount'
          hash[:code_bank] = code_bank if has? 'bka:codeBank'
          hash[:code_bank_attributes] = code_bank_attributes if has? 'bka:codeBank'
          hash[:name_bank] = name_bank if has? 'bka:nameBank'
          hash[:name_bank_attributes] = name_bank_attributes if has? 'bka:nameBank'
          hash[:sym_spec] = sym_spec if has? 'bka:symSpec'
          hash[:sym_spec_attributes] = sym_spec_attributes if has? 'bka:symSpec'
          hash[:iban] = iban if has? 'bka:IBAN'
          hash[:iban_attributes] = iban_attributes if has? 'bka:IBAN'
          hash[:swift] = swift if has? 'bka:SWIFT'
          hash[:swift_attributes] = swift_attributes if has? 'bka:SWIFT'
          hash[:analytic_account] = analytic_account.to_h if has? 'bka:analyticAccount'
          hash[:currency_bank_account] = currency_bank_account.to_h if has? 'bka:currencyBankAccount'
          hash[:cancelled] = cancelled if has? 'bka:cancelled'
          hash[:cancelled_attributes] = cancelled_attributes if has? 'bka:cancelled'
          hash[:homebanking] = homebanking if has? 'bka:homebanking'
          hash[:homebanking_attributes] = homebanking_attributes if has? 'bka:homebanking'
          hash[:pay_terminal] = pay_terminal if has? 'bka:payTerminal'
          hash[:pay_terminal_attributes] = pay_terminal_attributes if has? 'bka:payTerminal'
          hash[:note] = note if has? 'bka:note'
          hash[:note_attributes] = note_attributes if has? 'bka:note'

          hash
        end
      end
    end
  end
end