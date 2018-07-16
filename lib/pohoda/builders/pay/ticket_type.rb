module Pohoda
  module Builders
    module Pay
      class TicketType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('pay:value', data[:value], data[:value_attributes]) if data.key? :value

          root
        end
      end
    end
  end
end