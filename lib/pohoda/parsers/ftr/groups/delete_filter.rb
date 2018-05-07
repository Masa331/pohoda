module Pohoda
  module Parsers
    module Ftr
      module Groups
        module DeleteFilter
          def filter
            submodel_at(Ftr::FilterDocsDeleteType, 'ftr:filter')
          end

          def to_h_with_attrs
            hash = ParserCore::HashWithAttributes.new({}, attributes)

            hash[:filter] = filter.to_h_with_attrs if has? 'ftr:filter'

            hash
          end
        end
      end
    end
  end
end