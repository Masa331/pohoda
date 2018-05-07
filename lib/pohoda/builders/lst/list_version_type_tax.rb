module Pohoda
  module Builders
    module Lst
      class ListVersionTypeTax
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :import_details
            element = Ox::Element.new('lst:importDetails')
            data[:import_details].each { |i| element << Rdc::DetailType.new('rdc:detail', i).builder }
            root << element
          end
          root << build_element('lst:importData', data[:import_data]) if data.key? :import_data

          root
        end
      end
    end
  end
end