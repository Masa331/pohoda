module Pohoda
  module Builders
    module Bka
      class CurrencyBankAccountType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :currency
            root << Typ::RefType.new('currency', data[:currency]).builder
          end
          root << build_element('bka:rate', data[:rate]) if data.key? :rate

          root
        end
      end
    end
  end
end