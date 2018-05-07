module Pohoda
  module Builders
    module Pay
      class CashDefaultType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('pay:default', data[:default]) if data.key? :default

          root
        end
      end
    end
  end
end