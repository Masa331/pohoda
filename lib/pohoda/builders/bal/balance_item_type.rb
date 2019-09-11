module Pohoda
  module Builders
    module Bal
      class BalanceItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('bal:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('bal:number', data[:number], data[:number_attributes]) if data.key? :number
          if data.key? :partner_identity
            root << Typ::AddressType.new('bal:partnerIdentity', data[:partner_identity]).builder
          end
          root << build_element('bal:sourceAgenda', data[:source_agenda], data[:source_agenda_attributes]) if data.key? :source_agenda
          root << build_element('bal:accountNo', data[:account_no], data[:account_no_attributes]) if data.key? :account_no
          root << build_element('bal:pairSymbol', data[:pair_symbol], data[:pair_symbol_attributes]) if data.key? :pair_symbol
          root << build_element('bal:date', data[:date], data[:date_attributes]) if data.key? :date
          root << build_element('bal:dueDate', data[:due_date], data[:due_date_attributes]) if data.key? :due_date
          root << build_element('bal:dueDays', data[:due_days], data[:due_days_attributes]) if data.key? :due_days
          root << build_element('bal:text', data[:text], data[:text_attributes]) if data.key? :text
          root << build_element('bal:amountMD', data[:amount_md], data[:amount_md_attributes]) if data.key? :amount_md
          root << build_element('bal:amountD', data[:amount_d], data[:amount_d_attributes]) if data.key? :amount_d
          root << build_element('bal:amountRemain', data[:amount_remain], data[:amount_remain_attributes]) if data.key? :amount_remain
          if data.key? :home_currency
            root << Bal::HomeCurrencyType.new('bal:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Bal::ForeignCurrencyType.new('bal:foreignCurrency', data[:foreign_currency]).builder
          end

          root
        end
      end
    end
  end
end