module Pohoda
  module Parsers
    module Csh
      class CashRegisterType
        include ParserCore::BaseParser

        def action_type
          at 'csh:actionType'
        end

        def action_type_attributes
          attributes_at 'csh:actionType'
        end

        def cash_register_header
          submodel_at(Csh::CashRegisterHeaderType, 'csh:cashRegisterHeader')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:action_type] = action_type if has? 'csh:actionType'
          hash[:action_type_attributes] = action_type_attributes if has? 'csh:actionType'
          hash[:cash_register_header] = cash_register_header.to_h if has? 'csh:cashRegisterHeader'

          hash
        end
      end
    end
  end
end