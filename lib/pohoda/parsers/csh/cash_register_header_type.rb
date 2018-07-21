module Pohoda
  module Parsers
    module Csh
      class CashRegisterHeaderType
        include ParserCore::BaseParser

        def id
          at 'csh:id'
        end

        def id_attributes
          attributes_at 'csh:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'csh:extId')
        end

        def ids
          at 'csh:ids'
        end

        def ids_attributes
          attributes_at 'csh:ids'
        end

        def name
          at 'csh:name'
        end

        def name_attributes
          attributes_at 'csh:name'
        end

        def account
          submodel_at(Typ::RefType, 'csh:account')
        end

        def cashier
          submodel_at(Typ::RefType, 'csh:cashier')
        end

        def currency_cash_register
          submodel_at(Csh::CurrencyCashRegisterType, 'csh:currencyCashRegister')
        end

        def cancelled
          at 'csh:cancelled'
        end

        def cancelled_attributes
          attributes_at 'csh:cancelled'
        end

        def fm
          at 'csh:FM'
        end

        def fm_attributes
          attributes_at 'csh:FM'
        end

        def note
          at 'csh:note'
        end

        def note_attributes
          attributes_at 'csh:note'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'csh:id'
          hash[:id_attributes] = id_attributes if has? 'csh:id'
          hash[:ext_id] = ext_id.to_h if has? 'csh:extId'
          hash[:ids] = ids if has? 'csh:ids'
          hash[:ids_attributes] = ids_attributes if has? 'csh:ids'
          hash[:name] = name if has? 'csh:name'
          hash[:name_attributes] = name_attributes if has? 'csh:name'
          hash[:account] = account.to_h if has? 'csh:account'
          hash[:cashier] = cashier.to_h if has? 'csh:cashier'
          hash[:currency_cash_register] = currency_cash_register.to_h if has? 'csh:currencyCashRegister'
          hash[:cancelled] = cancelled if has? 'csh:cancelled'
          hash[:cancelled_attributes] = cancelled_attributes if has? 'csh:cancelled'
          hash[:fm] = fm if has? 'csh:FM'
          hash[:fm_attributes] = fm_attributes if has? 'csh:FM'
          hash[:note] = note if has? 'csh:note'
          hash[:note_attributes] = note_attributes if has? 'csh:note'

          hash
        end
      end
    end
  end
end