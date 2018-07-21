module Pohoda
  module Builders
    module Typ
      class LabelsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :label
            data[:label].each { |i| root << Typ::LabelType.new('typ:label', i).builder }
          end

          root
        end
      end
    end
  end
end