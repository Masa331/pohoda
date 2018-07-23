module Pohoda
  module Builders
    module Bka
      class CurrencyBankAccountType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :currency
            root << Typ::RefType.new('bka:currency', data[:currency]).builder
          end
          root << build_element('bka:rate', data[:rate], data[:rate_attributes]) if data.key? :rate

          root
        end
      end
    end
  end
end