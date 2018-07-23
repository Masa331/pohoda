module Pohoda
  module Builders
    module Ftr
      module Groups
        module DeleteFilter
          def builder
            root = Ox::Element.new(name)
            root = add_attributes_and_namespaces(root)

            if data.key? :filter
              root << Ftr::FilterDocsDeleteType.new('ftr:filter', data[:filter]).builder
            end

            root
          end
        end
      end
    end
  end
end