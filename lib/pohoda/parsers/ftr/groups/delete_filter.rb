module Pohoda
  module Parsers
    module Ftr
      module Groups
        module DeleteFilter
          def filter
            submodel_at(Ftr::FilterDocsDeleteType, 'ftr:filter')
          end

          def to_h
            hash = {}
            hash[:attributes] = attributes

            hash[:filter] = filter.to_h if has? 'ftr:filter'

            hash
          end
        end
      end
    end
  end
end