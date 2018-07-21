module Pohoda
  module Builders
    module Pay
      class TicketType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('pay:value', data[:value], data[:value_attributes]) if data.key? :value

          root
        end
      end
    end
  end
end