module Pohoda
  module Builders
    module Sto
      class PLUtype
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('sto:usePLU', data[:use_plu]) if data.key? :use_plu
          root << build_element('sto:lowerLimit', data[:lower_limit]) if data.key? :lower_limit
          root << build_element('sto:upperLimit', data[:upper_limit]) if data.key? :upper_limit

          root
        end
      end
    end
  end
end