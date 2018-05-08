module Pohoda
  module Builders
    module Bal
      class BalanceItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('bal:id', data[:id]) if data.key? :id
          root << build_element('bal:number', data[:number]) if data.key? :number
          if data.key? :partner_identity
            root << Typ::AddressType.new('bal:partnerIdentity', data[:partner_identity]).builder
          end
          root << build_element('bal:sourceAgenda', data[:source_agenda]) if data.key? :source_agenda
          root << build_element('bal:accountNo', data[:account_no]) if data.key? :account_no
          root << build_element('bal:pairSymbol', data[:pair_symbol]) if data.key? :pair_symbol
          root << build_element('bal:date', data[:date]) if data.key? :date
          root << build_element('bal:dueDate', data[:due_date]) if data.key? :due_date
          root << build_element('bal:dueDays', data[:due_days]) if data.key? :due_days
          root << build_element('bal:text', data[:text]) if data.key? :text
          root << build_element('bal:amountMD', data[:amount_md]) if data.key? :amount_md
          root << build_element('bal:amountD', data[:amount_d]) if data.key? :amount_d
          root << build_element('bal:amountRemain', data[:amount_remain]) if data.key? :amount_remain

          root
        end
      end
    end
  end
end