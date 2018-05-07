module Pohoda
  module Builders
    module Pay
      class TicketType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('pay:value', data[:value]) if data.key? :value

          root
        end
      end
    end
  end
end