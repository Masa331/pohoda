module Pohoda
  module Builders
    module Nms
      class PeriodAccountUnitType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('nms:dateFrom', data[:date_from]) if data.key? :date_from
          root << build_element('nms:dateTill', data[:date_till]) if data.key? :date_till

          root
        end
      end
    end
  end
end