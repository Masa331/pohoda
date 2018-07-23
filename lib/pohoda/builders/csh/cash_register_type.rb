module Pohoda
  module Builders
    module Csh
      class CashRegisterType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

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