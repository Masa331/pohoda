module Pohoda
  module Builders
    module Typ
      class ExtIdType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:ids', data[:ids], data[:ids_attributes]) if data.key? :ids
          root << build_element('typ:exSystemName', data[:ex_system_name], data[:ex_system_name_attributes]) if data.key? :ex_system_name
          root << build_element('typ:exSystemText', data[:ex_system_text], data[:ex_system_text_attributes]) if data.key? :ex_system_text

          root
        end
      end
    end
  end
end