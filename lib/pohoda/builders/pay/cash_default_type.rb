module Pohoda
  module Builders
    module Pay
      class CashDefaultType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('pay:default', data[:default], data[:default_attributes]) if data.key? :default

          root
        end
      end
    end
  end
end