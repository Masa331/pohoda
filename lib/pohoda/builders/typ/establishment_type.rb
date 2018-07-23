module Pohoda
  module Builders
    module Typ
      class EstablishmentType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:company', data[:company], data[:company_attributes]) if data.key? :company
          root << build_element('typ:city', data[:city], data[:city_attributes]) if data.key? :city
          root << build_element('typ:street', data[:street], data[:street_attributes]) if data.key? :street
          root << build_element('typ:zip', data[:zip], data[:zip_attributes]) if data.key? :zip

          root
        end
      end
    end
  end
end