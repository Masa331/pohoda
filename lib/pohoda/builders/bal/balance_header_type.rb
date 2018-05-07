module Pohoda
  module Builders
    module Bal
      class BalanceHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('bal:dateTo', data[:date_to]) if data.key? :date_to

          root
        end
      end
    end
  end
end