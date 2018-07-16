module Pohoda
  module Builders
    module Bka
      class BankAccountHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('bka:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('bka:extId', data[:ext_id]).builder
          end
          root << build_element('bka:ids', data[:ids], data[:ids_attributes]) if data.key? :ids
          root << build_element('bka:numberAccount', data[:number_account], data[:number_account_attributes]) if data.key? :number_account
          root << build_element('bka:codeBank', data[:code_bank], data[:code_bank_attributes]) if data.key? :code_bank
          root << build_element('bka:nameBank', data[:name_bank], data[:name_bank_attributes]) if data.key? :name_bank
          root << build_element('bka:symSpec', data[:sym_spec], data[:sym_spec_attributes]) if data.key? :sym_spec
          root << build_element('bka:IBAN', data[:iban], data[:iban_attributes]) if data.key? :iban
          root << build_element('bka:SWIFT', data[:swift], data[:swift_attributes]) if data.key? :swift
          if data.key? :analytic_account
            root << Typ::RefType.new('bka:analyticAccount', data[:analytic_account]).builder
          end
          if data.key? :currency_bank_account
            root << Bka::CurrencyBankAccountType.new('bka:currencyBankAccount', data[:currency_bank_account]).builder
          end
          root << build_element('bka:cancelled', data[:cancelled], data[:cancelled_attributes]) if data.key? :cancelled
          root << build_element('bka:homebanking', data[:homebanking], data[:homebanking_attributes]) if data.key? :homebanking
          root << build_element('bka:payTerminal', data[:pay_terminal], data[:pay_terminal_attributes]) if data.key? :pay_terminal
          root << build_element('bka:note', data[:note], data[:note_attributes]) if data.key? :note

          root
        end
      end
    end
  end
end