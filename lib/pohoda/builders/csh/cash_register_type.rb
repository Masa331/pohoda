module Pohoda
  module Builders
    module Csh
      class CashRegisterType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('csh:actionType', data[:action_type], data[:action_type_attributes]) if data.key? :action_type
          if data.key? :cash_register_header
            root << Csh::CashRegisterHeaderType.new('csh:cashRegisterHeader', data[:cash_register_header]).builder
          end

          root
        end
      end
    end
  end
end