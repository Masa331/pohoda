module Pohoda
  module Builders
    module Typ
      class ParameterDocType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('typ:textValue', data[:text_value], data[:text_value_attributes]) if data.key? :text_value
          root << build_element('typ:memoValue', data[:memo_value], data[:memo_value_attributes]) if data.key? :memo_value
          root << build_element('typ:currencyValue', data[:currency_value], data[:currency_value_attributes]) if data.key? :currency_value
          root << build_element('typ:booleanValue', data[:boolean_value], data[:boolean_value_attributes]) if data.key? :boolean_value
          root << build_element('typ:numberValue', data[:number_value], data[:number_value_attributes]) if data.key? :number_value
          root << build_element('typ:datetimeValue', data[:datetime_value], data[:datetime_value_attributes]) if data.key? :datetime_value
          if data.key? :list_value_ref
            root << Typ::RefType.new('typ:listValueRef', data[:list_value_ref]).builder
          end
          root << build_element('typ:listValue', data[:list_value], data[:list_value_attributes]) if data.key? :list_value
          root << build_element('typ:integerValue', data[:integer_value], data[:integer_value_attributes]) if data.key? :integer_value
          if data.key? :list
            root << Typ::RefType.new('typ:list', data[:list]).builder
          end

          root
        end
      end
    end
  end
end