module Pohoda
  module Builders
    module Typ
      class ParameterDocType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:name', data[:name]) if data.key? :name
          root << build_element('typ:textValue', data[:text_value]) if data.key? :text_value
          root << build_element('typ:memoValue', data[:memo_value]) if data.key? :memo_value
          root << build_element('typ:currencyValue', data[:currency_value]) if data.key? :currency_value
          root << build_element('typ:booleanValue', data[:boolean_value]) if data.key? :boolean_value
          root << build_element('typ:numberValue', data[:number_value]) if data.key? :number_value
          root << build_element('typ:datetimeValue', data[:datetime_value]) if data.key? :datetime_value
          if data.key? :list_value_ref
            root << Typ::RefType.new('listValueRef', data[:list_value_ref]).builder
          end
          root << build_element('typ:listValue', data[:list_value]) if data.key? :list_value
          root << build_element('typ:integerValue', data[:integer_value]) if data.key? :integer_value
          if data.key? :list
            root << Typ::RefType.new('list', data[:list]).builder
          end

          root
        end
      end
    end
  end
end