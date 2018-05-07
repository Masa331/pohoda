module Pohoda
  module Builders
    module Csh
      class CashRegisterHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('csh:id', data[:id]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('extId', data[:ext_id]).builder
          end
          root << build_element('csh:ids', data[:ids]) if data.key? :ids
          root << build_element('csh:name', data[:name]) if data.key? :name
          if data.key? :account
            root << Typ::RefType.new('account', data[:account]).builder
          end
          if data.key? :cashier
            root << Typ::RefType.new('cashier', data[:cashier]).builder
          end
          if data.key? :currency_cash_register
            root << Csh::CurrencyCashRegisterType.new('currencyCashRegister', data[:currency_cash_register]).builder
          end
          root << build_element('csh:cancelled', data[:cancelled]) if data.key? :cancelled
          root << build_element('csh:FM', data[:fm]) if data.key? :fm
          root << build_element('csh:note', data[:note]) if data.key? :note

          root
        end
      end
    end
  end
end