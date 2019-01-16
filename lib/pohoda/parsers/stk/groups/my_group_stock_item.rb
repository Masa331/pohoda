module Pohoda
  module Parsers
    module Stk
      module Groups
        module MyGroupStockItem
          def id
            at 'stk:id'
          end

          def id_attributes
            attributes_at 'stk:id'
          end

          def ext_id
            submodel_at(Typ::ExtIdType, 'stk:extId')
          end

          def storage
            submodel_at(Typ::RefTypeStorage, 'stk:storage')
          end

          def code
            at 'stk:code'
          end

          def code_attributes
            attributes_at 'stk:code'
          end

          def name
            at 'stk:name'
          end

          def name_attributes
            attributes_at 'stk:name'
          end

          def count
            at 'stk:count'
          end

          def count_attributes
            attributes_at 'stk:count'
          end

          def quantity
            at 'stk:quantity'
          end

          def quantity_attributes
            attributes_at 'stk:quantity'
          end

          def unit
            at 'stk:unit'
          end

          def unit_attributes
            attributes_at 'stk:unit'
          end

          def stock_order
            at 'stk:stockOrder'
          end

          def stock_order_attributes
            attributes_at 'stk:stockOrder'
          end

          def to_h
            hash = {}
            hash[:attributes] = attributes

            hash[:id] = id if has? 'stk:id'
            hash[:id_attributes] = id_attributes if has? 'stk:id'
            hash[:ext_id] = ext_id.to_h if has? 'stk:extId'
            hash[:storage] = storage.to_h if has? 'stk:storage'
            hash[:code] = code if has? 'stk:code'
            hash[:code_attributes] = code_attributes if has? 'stk:code'
            hash[:name] = name if has? 'stk:name'
            hash[:name_attributes] = name_attributes if has? 'stk:name'
            hash[:count] = count if has? 'stk:count'
            hash[:count_attributes] = count_attributes if has? 'stk:count'
            hash[:quantity] = quantity if has? 'stk:quantity'
            hash[:quantity_attributes] = quantity_attributes if has? 'stk:quantity'
            hash[:unit] = unit if has? 'stk:unit'
            hash[:unit_attributes] = unit_attributes if has? 'stk:unit'
            hash[:stock_order] = stock_order if has? 'stk:stockOrder'
            hash[:stock_order_attributes] = stock_order_attributes if has? 'stk:stockOrder'

            hash
          end
        end
      end
    end
  end
end