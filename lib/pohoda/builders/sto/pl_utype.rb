module Pohoda
  module Builders
    module Sto
      class PLUtype
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('sto:usePLU', data[:use_plu], data[:use_plu_attributes]) if data.key? :use_plu
          root << build_element('sto:lowerLimit', data[:lower_limit], data[:lower_limit_attributes]) if data.key? :lower_limit
          root << build_element('sto:upperLimit', data[:upper_limit], data[:upper_limit_attributes]) if data.key? :upper_limit

          root
        end
      end
    end
  end
end