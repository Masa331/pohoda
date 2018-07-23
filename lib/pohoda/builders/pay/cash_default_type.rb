module Pohoda
  module Builders
    module Pay
      class CashDefaultType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('pay:default', data[:default], data[:default_attributes]) if data.key? :default

          root
        end
      end
    end
  end
end