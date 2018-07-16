module Pohoda
  module Builders
    module Lst
      class ListVersionTypeTax
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :import_details
            element = Ox::Element.new('lst:importDetails')
            data[:import_details].each { |i| element << Rdc::DetailType.new('rdc:detail', i).builder }
            root << element
          end
          root << build_element('lst:importData', data[:import_data], data[:import_data_attributes]) if data.key? :import_data

          root
        end
      end
    end
  end
end