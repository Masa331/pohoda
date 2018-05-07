module Pohoda
  module Parsers
    module Stk
      module Groups
        module MyGroupStockItem
          def id
            at 'stk:id'
          end

          def storage
            submodel_at(Typ::RefTypeStorage, 'stk:storage')
          end

          def code
            at 'stk:code'
          end

          def name
            at 'stk:name'
          end

          def count
            at 'stk:count'
          end

          def quantity
            at 'stk:quantity'
          end

          def unit
            at 'stk:unit'
          end

          def stock_order
            at 'stk:stockOrder'
          end

          def to_h_with_attrs
            hash = ParserCore::HashWithAttributes.new({}, attributes)

            hash[:id] = id if has? 'stk:id'
            hash[:storage] = storage.to_h_with_attrs if has? 'stk:storage'
            hash[:code] = code if has? 'stk:code'
            hash[:name] = name if has? 'stk:name'
            hash[:count] = count if has? 'stk:count'
            hash[:quantity] = quantity if has? 'stk:quantity'
            hash[:unit] = unit if has? 'stk:unit'
            hash[:stock_order] = stock_order if has? 'stk:stockOrder'

            hash
          end
        end
      end
    end
  end
end