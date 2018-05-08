module Pohoda
  module Builders
    module Acp
      class TypeAcpCurrencyForeign
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :currency
            root << Typ::RefType.new('acp:currency', data[:currency]).builder
          end
          root << build_element('acp:rate', data[:rate]) if data.key? :rate
          root << build_element('acp:amount', data[:amount]) if data.key? :amount

          root
        end
      end
    end
  end
end