module Pohoda
  module Builders
    module Prn
      class ReportType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('prn:id', data[:id]) if data.key? :id

          root
        end
      end
    end
  end
end