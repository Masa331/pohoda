module Pohoda
  module Parsers
    module Ftr
      module Groups
        module GroupFilter3
          def filter
            submodel_at(Ftr::FilterGroupStockType, 'ftr:filter')
          end

          def user_filter_name
            at 'ftr:userFilterName'
          end

          def user_filter_name_attributes
            attributes_at 'ftr:userFilterName'
          end

          def to_h
            hash = {}
            hash[:attributes] = attributes

            hash[:filter] = filter.to_h if has? 'ftr:filter'
            hash[:user_filter_name] = user_filter_name if has? 'ftr:userFilterName'
            hash[:user_filter_name_attributes] = user_filter_name_attributes if has? 'ftr:userFilterName'

            hash
          end
        end
      end
    end
  end
end