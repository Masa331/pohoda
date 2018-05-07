module Pohoda
  module Builders
    module Prn
      class ParametersType2
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('prn:copy', data[:copy]) if data.key? :copy
          root << build_element('prn:datePrint', data[:date_print]) if data.key? :date_print

          root
        end
      end
    end
  end
end