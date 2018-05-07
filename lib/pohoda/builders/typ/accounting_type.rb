module Pohoda
  module Builders
    module Typ
      class AccountingType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:id', data[:id]) if data.key? :id
          root << build_element('typ:ids', data[:ids]) if data.key? :ids
          root << build_element('typ:accountingType', data[:accounting_type]) if data.key? :accounting_type

          root
        end
      end
    end
  end
end