module Pohoda
  module Builders
    module Typ
      class EstablishmentType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:company', data[:company]) if data.key? :company
          root << build_element('typ:city', data[:city]) if data.key? :city
          root << build_element('typ:street', data[:street]) if data.key? :street
          root << build_element('typ:zip', data[:zip]) if data.key? :zip

          root
        end
      end
    end
  end
end