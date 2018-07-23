module Pohoda
  module Builders
    module Con
      class ContractType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :contract_desc
            root << Con::ContractDescType.new('con:contractDesc', data[:contract_desc]).builder
          end
          if data.key? :print
            element = Ox::Element.new('con:print')
            data[:print].each { |i| element << Prn::PrinterSettingsType.new('prn:printerSettings', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end