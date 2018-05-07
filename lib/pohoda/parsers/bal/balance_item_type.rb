module Pohoda
  module Parsers
    module Bal
      class BalanceItemType
        include ParserCore::BaseParser

        def id
          at 'bal:id'
        end

        def number
          at 'bal:number'
        end

        def partner_identity
          submodel_at(Typ::AddressType, 'bal:partnerIdentity')
        end

        def source_agenda
          at 'bal:sourceAgenda'
        end

        def account_no
          at 'bal:accountNo'
        end

        def pair_symbol
          at 'bal:pairSymbol'
        end

        def date
          at 'bal:date'
        end

        def due_date
          at 'bal:dueDate'
        end

        def due_days
          at 'bal:dueDays'
        end

        def text
          at 'bal:text'
        end

        def amount_md
          at 'bal:amountMD'
        end

        def amount_d
          at 'bal:amountD'
        end

        def amount_remain
          at 'bal:amountRemain'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'bal:id'
          hash[:number] = number if has? 'bal:number'
          hash[:partner_identity] = partner_identity.to_h_with_attrs if has? 'bal:partnerIdentity'
          hash[:source_agenda] = source_agenda if has? 'bal:sourceAgenda'
          hash[:account_no] = account_no if has? 'bal:accountNo'
          hash[:pair_symbol] = pair_symbol if has? 'bal:pairSymbol'
          hash[:date] = date if has? 'bal:date'
          hash[:due_date] = due_date if has? 'bal:dueDate'
          hash[:due_days] = due_days if has? 'bal:dueDays'
          hash[:text] = text if has? 'bal:text'
          hash[:amount_md] = amount_md if has? 'bal:amountMD'
          hash[:amount_d] = amount_d if has? 'bal:amountD'
          hash[:amount_remain] = amount_remain if has? 'bal:amountRemain'

          hash
        end
      end
    end
  end
end