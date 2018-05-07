module Pohoda
  module Parsers
    module Acu
      class ListAccountingUnitType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_accounting_unit
          submodel_at(Acu::ItemAccountingUnitType, 'acu:itemAccountingUnit')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:item_accounting_unit] = item_accounting_unit.to_h_with_attrs if has? 'acu:itemAccountingUnit'

          hash
          super.merge(hash)
        end
      end
    end
  end
end