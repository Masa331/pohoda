module Pohoda
  module Builders
    module Typ
      class ExtIdType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:ids', data[:ids]) if data.key? :ids
          root << build_element('typ:exSystemName', data[:ex_system_name]) if data.key? :ex_system_name
          root << build_element('typ:exSystemText', data[:ex_system_text]) if data.key? :ex_system_text

          root
        end
      end
    end
  end
end