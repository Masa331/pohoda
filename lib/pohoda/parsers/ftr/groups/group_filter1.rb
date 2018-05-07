module Pohoda
  module Parsers
    module Ftr
      module Groups
        module GroupFilter1
          def filter
            submodel_at(Ftr::FilterDocsType, 'ftr:filter')
          end

          def user_filter_name
            at 'ftr:userFilterName'
          end

          def to_h_with_attrs
            hash = ParserCore::HashWithAttributes.new({}, attributes)

            hash[:filter] = filter.to_h_with_attrs if has? 'ftr:filter'
            hash[:user_filter_name] = user_filter_name if has? 'ftr:userFilterName'

            hash
          end
        end
      end
    end
  end
end