module Pohoda
  module Builders
    module MKasa
      class VatPayerWholePeriodType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('mKasa:taxPeriod', data[:tax_period], data[:tax_period_attributes]) if data.key? :tax_period

          root
        end
      end
    end
  end
end