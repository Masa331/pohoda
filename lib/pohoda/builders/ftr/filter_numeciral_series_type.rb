module Pohoda
  module Builders
    module Ftr
      class FilterNumeciralSeriesType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('ftr:id', data[:id]) if data.key? :id
          root << build_element('ftr:period', data[:period]) if data.key? :period
          root << build_element('ftr:agenda', data[:agenda]) if data.key? :agenda

          root
        end
      end
    end
  end
end