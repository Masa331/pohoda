module Pohoda
  module Builders
    module Lst
      class CreateAccountingDoubleEntryType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('lst:createAccounting', data[:create_accounting], data[:create_accounting_attributes]) if data.key? :create_accounting

          root
        end
      end
    end
  end
end