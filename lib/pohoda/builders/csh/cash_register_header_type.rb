module Pohoda
  module Builders
    module Csh
      class CashRegisterHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('csh:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('csh:extId', data[:ext_id]).builder
          end
          root << build_element('csh:ids', data[:ids], data[:ids_attributes]) if data.key? :ids
          root << build_element('csh:name', data[:name], data[:name_attributes]) if data.key? :name
          if data.key? :account
            root << Typ::RefType.new('csh:account', data[:account]).builder
          end
          if data.key? :cashier
            root << Typ::RefType.new('csh:cashier', data[:cashier]).builder
          end
          if data.key? :currency_cash_register
            root << Csh::CurrencyCashRegisterType.new('csh:currencyCashRegister', data[:currency_cash_register]).builder
          end
          root << build_element('csh:cancelled', data[:cancelled], data[:cancelled_attributes]) if data.key? :cancelled
          root << build_element('csh:FM', data[:fm], data[:fm_attributes]) if data.key? :fm
          root << build_element('csh:note', data[:note], data[:note_attributes]) if data.key? :note

          root
        end
      end
    end
  end
end