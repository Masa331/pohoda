module Pohoda
  module Builders
    module Typ
      class LabelsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :label
            data[:label].each { |i| root << Typ::LabelType.new('typ:label', i).builder }
          end

          root
        end
      end
    end
  end
end