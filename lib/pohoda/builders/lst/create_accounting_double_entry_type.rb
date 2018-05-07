module Pohoda
  module Builders
    module Lst
      class CreateAccountingDoubleEntryType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('lst:createAccounting', data[:create_accounting]) if data.key? :create_accounting

          root
        end
      end
    end
  end
end