module Pohoda
  module Builders
    module Stk
      class SerialNumberItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('stk:id', data[:id]) if data.key? :id
          root << build_element('stk:serialNumber', data[:serial_number]) if data.key? :serial_number
          root << build_element('stk:count', data[:count]) if data.key? :count
          root << build_element('stk:expiration', data[:expiration]) if data.key? :expiration
          root << build_element('stk:note', data[:note]) if data.key? :note

          root
        end
      end
    end
  end
end