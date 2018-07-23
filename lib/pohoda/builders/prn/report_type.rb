module Pohoda
  module Builders
    module Prn
      class ReportType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('prn:id', data[:id], data[:id_attributes]) if data.key? :id

          root
        end
      end
    end
  end
end