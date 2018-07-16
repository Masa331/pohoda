module Pohoda
  module Builders
    module Ftr
      module Groups
        module GroupFilter1
          def builder
            root = Ox::Element.new(name)
            root = add_attributes_and_namespaces(root)

            if data.key? :filter
              root << Ftr::FilterDocsType.new('ftr:filter', data[:filter]).builder
            end
            root << build_element('ftr:userFilterName', data[:user_filter_name], data[:user_filter_name_attributes]) if data.key? :user_filter_name

            root
          end
        end
      end
    end
  end
end