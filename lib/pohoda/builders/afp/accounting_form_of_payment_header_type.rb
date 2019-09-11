module Pohoda
  module Builders
    module Afp
      class AccountingFormOfPaymentHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('afp:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('afp:extId', data[:ext_id]).builder
          end
          if data.key? :centre
            root << Typ::RefType.new('afp:centre', data[:centre]).builder
          end
          if data.key? :payment_type
            root << Typ::PaymentType.new('afp:paymentType', data[:payment_type]).builder
          end
          root << build_element('afp:accountingDestination', data[:accounting_destination], data[:accounting_destination_attributes]) if data.key? :accounting_destination
          if data.key? :account
            root << Typ::AccountType.new('afp:account', data[:account]).builder
          end
          root << build_element('afp:setTheAccountIndependently', data[:set_the_account_independently], data[:set_the_account_independently_attributes]) if data.key? :set_the_account_independently
          root << build_element('afp:debit', data[:debit], data[:debit_attributes]) if data.key? :debit
          root << build_element('afp:credit', data[:credit], data[:credit_attributes]) if data.key? :credit
          if data.key? :accounting
            root << Typ::RefType.new('afp:accounting', data[:accounting]).builder
          end

          root
        end
      end
    end
  end
end