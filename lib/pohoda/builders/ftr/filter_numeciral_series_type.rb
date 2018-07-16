module Pohoda
  module Builders
    module Ftr
      class FilterNumeciralSeriesType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('ftr:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('ftr:period', data[:period], data[:period_attributes]) if data.key? :period
          root << build_element('ftr:agenda', data[:agenda], data[:agenda_attributes]) if data.key? :agenda

          root
        end
      end
    end
  end
end