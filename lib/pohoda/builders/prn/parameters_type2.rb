module Pohoda
  module Builders
    module Prn
      class ParametersType2
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('prn:copy', data[:copy], data[:copy_attributes]) if data.key? :copy
          root << build_element('prn:datePrint', data[:date_print], data[:date_print_attributes]) if data.key? :date_print

          root
        end
      end
    end
  end
end