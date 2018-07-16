module Pohoda
  module Builders
    module Acp
      class TypeAcpCurrencyForeign
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :currency
            root << Typ::RefType.new('acp:currency', data[:currency]).builder
          end
          root << build_element('acp:rate', data[:rate], data[:rate_attributes]) if data.key? :rate
          root << build_element('acp:amount', data[:amount], data[:amount_attributes]) if data.key? :amount

          root
        end
      end
    end
  end
end