module Pohoda
  module Builders
    module Bka
      class BankAccountHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('bka:id', data[:id]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('extId', data[:ext_id]).builder
          end
          root << build_element('bka:ids', data[:ids]) if data.key? :ids
          root << build_element('bka:numberAccount', data[:number_account]) if data.key? :number_account
          root << build_element('bka:codeBank', data[:code_bank]) if data.key? :code_bank
          root << build_element('bka:nameBank', data[:name_bank]) if data.key? :name_bank
          root << build_element('bka:symSpec', data[:sym_spec]) if data.key? :sym_spec
          root << build_element('bka:IBAN', data[:iban]) if data.key? :iban
          root << build_element('bka:SWIFT', data[:swift]) if data.key? :swift
          if data.key? :analytic_account
            root << Typ::RefType.new('analyticAccount', data[:analytic_account]).builder
          end
          if data.key? :currency_bank_account
            root << Bka::CurrencyBankAccountType.new('currencyBankAccount', data[:currency_bank_account]).builder
          end
          root << build_element('bka:cancelled', data[:cancelled]) if data.key? :cancelled
          root << build_element('bka:homebanking', data[:homebanking]) if data.key? :homebanking
          root << build_element('bka:payTerminal', data[:pay_terminal]) if data.key? :pay_terminal
          root << build_element('bka:note', data[:note]) if data.key? :note

          root
        end
      end
    end
  end
end