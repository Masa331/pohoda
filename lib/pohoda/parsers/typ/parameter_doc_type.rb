module Pohoda
  module Parsers
    module Typ
      class ParameterDocType
        include ParserCore::BaseParser

        def name
          at 'typ:name'
        end

        def name_attributes
          attributes_at 'typ:name'
        end

        def text_value
          at 'typ:textValue'
        end

        def text_value_attributes
          attributes_at 'typ:textValue'
        end

        def memo_value
          at 'typ:memoValue'
        end

        def memo_value_attributes
          attributes_at 'typ:memoValue'
        end

        def currency_value
          at 'typ:currencyValue'
        end

        def currency_value_attributes
          attributes_at 'typ:currencyValue'
        end

        def boolean_value
          at 'typ:booleanValue'
        end

        def boolean_value_attributes
          attributes_at 'typ:booleanValue'
        end

        def number_value
          at 'typ:numberValue'
        end

        def number_value_attributes
          attributes_at 'typ:numberValue'
        end

        def datetime_value
          at 'typ:datetimeValue'
        end

        def datetime_value_attributes
          attributes_at 'typ:datetimeValue'
        end

        def list_value_ref
          submodel_at(Typ::RefType, 'typ:listValueRef')
        end

        def list_value
          at 'typ:listValue'
        end

        def list_value_attributes
          attributes_at 'typ:listValue'
        end

        def integer_value
          at 'typ:integerValue'
        end

        def integer_value_attributes
          attributes_at 'typ:integerValue'
        end

        def list
          submodel_at(Typ::RefType, 'typ:list')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:name] = name if has? 'typ:name'
          hash[:name_attributes] = name_attributes if has? 'typ:name'
          hash[:text_value] = text_value if has? 'typ:textValue'
          hash[:text_value_attributes] = text_value_attributes if has? 'typ:textValue'
          hash[:memo_value] = memo_value if has? 'typ:memoValue'
          hash[:memo_value_attributes] = memo_value_attributes if has? 'typ:memoValue'
          hash[:currency_value] = currency_value if has? 'typ:currencyValue'
          hash[:currency_value_attributes] = currency_value_attributes if has? 'typ:currencyValue'
          hash[:boolean_value] = boolean_value if has? 'typ:booleanValue'
          hash[:boolean_value_attributes] = boolean_value_attributes if has? 'typ:booleanValue'
          hash[:number_value] = number_value if has? 'typ:numberValue'
          hash[:number_value_attributes] = number_value_attributes if has? 'typ:numberValue'
          hash[:datetime_value] = datetime_value if has? 'typ:datetimeValue'
          hash[:datetime_value_attributes] = datetime_value_attributes if has? 'typ:datetimeValue'
          hash[:list_value_ref] = list_value_ref.to_h if has? 'typ:listValueRef'
          hash[:list_value] = list_value if has? 'typ:listValue'
          hash[:list_value_attributes] = list_value_attributes if has? 'typ:listValue'
          hash[:integer_value] = integer_value if has? 'typ:integerValue'
          hash[:integer_value_attributes] = integer_value_attributes if has? 'typ:integerValue'
          hash[:list] = list.to_h if has? 'typ:list'

          hash
        end
      end
    end
  end
end