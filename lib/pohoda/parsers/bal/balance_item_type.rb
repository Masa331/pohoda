module Pohoda
  module Parsers
    module Bal
      class BalanceItemType
        include ParserCore::BaseParser

        def id
          at 'bal:id'
        end

        def id_attributes
          attributes_at 'bal:id'
        end

        def number
          at 'bal:number'
        end

        def number_attributes
          attributes_at 'bal:number'
        end

        def partner_identity
          submodel_at(Typ::AddressType, 'bal:partnerIdentity')
        end

        def source_agenda
          at 'bal:sourceAgenda'
        end

        def source_agenda_attributes
          attributes_at 'bal:sourceAgenda'
        end

        def account_no
          at 'bal:accountNo'
        end

        def account_no_attributes
          attributes_at 'bal:accountNo'
        end

        def pair_symbol
          at 'bal:pairSymbol'
        end

        def pair_symbol_attributes
          attributes_at 'bal:pairSymbol'
        end

        def date
          at 'bal:date'
        end

        def date_attributes
          attributes_at 'bal:date'
        end

        def due_date
          at 'bal:dueDate'
        end

        def due_date_attributes
          attributes_at 'bal:dueDate'
        end

        def due_days
          at 'bal:dueDays'
        end

        def due_days_attributes
          attributes_at 'bal:dueDays'
        end

        def text
          at 'bal:text'
        end

        def text_attributes
          attributes_at 'bal:text'
        end

        def amount_md
          at 'bal:amountMD'
        end

        def amount_md_attributes
          attributes_at 'bal:amountMD'
        end

        def amount_d
          at 'bal:amountD'
        end

        def amount_d_attributes
          attributes_at 'bal:amountD'
        end

        def amount_remain
          at 'bal:amountRemain'
        end

        def amount_remain_attributes
          attributes_at 'bal:amountRemain'
        end

        def home_currency
          submodel_at(Bal::HomeCurrencyType, 'bal:homeCurrency')
        end

        def foreign_currency
          submodel_at(Bal::ForeignCurrencyType, 'bal:foreignCurrency')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'bal:id'
          hash[:id_attributes] = id_attributes if has? 'bal:id'
          hash[:number] = number if has? 'bal:number'
          hash[:number_attributes] = number_attributes if has? 'bal:number'
          hash[:partner_identity] = partner_identity.to_h if has? 'bal:partnerIdentity'
          hash[:source_agenda] = source_agenda if has? 'bal:sourceAgenda'
          hash[:source_agenda_attributes] = source_agenda_attributes if has? 'bal:sourceAgenda'
          hash[:account_no] = account_no if has? 'bal:accountNo'
          hash[:account_no_attributes] = account_no_attributes if has? 'bal:accountNo'
          hash[:pair_symbol] = pair_symbol if has? 'bal:pairSymbol'
          hash[:pair_symbol_attributes] = pair_symbol_attributes if has? 'bal:pairSymbol'
          hash[:date] = date if has? 'bal:date'
          hash[:date_attributes] = date_attributes if has? 'bal:date'
          hash[:due_date] = due_date if has? 'bal:dueDate'
          hash[:due_date_attributes] = due_date_attributes if has? 'bal:dueDate'
          hash[:due_days] = due_days if has? 'bal:dueDays'
          hash[:due_days_attributes] = due_days_attributes if has? 'bal:dueDays'
          hash[:text] = text if has? 'bal:text'
          hash[:text_attributes] = text_attributes if has? 'bal:text'
          hash[:amount_md] = amount_md if has? 'bal:amountMD'
          hash[:amount_md_attributes] = amount_md_attributes if has? 'bal:amountMD'
          hash[:amount_d] = amount_d if has? 'bal:amountD'
          hash[:amount_d_attributes] = amount_d_attributes if has? 'bal:amountD'
          hash[:amount_remain] = amount_remain if has? 'bal:amountRemain'
          hash[:amount_remain_attributes] = amount_remain_attributes if has? 'bal:amountRemain'
          hash[:home_currency] = home_currency.to_h if has? 'bal:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'bal:foreignCurrency'

          hash
        end
      end
    end
  end
end