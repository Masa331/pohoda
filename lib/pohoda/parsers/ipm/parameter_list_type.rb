module Pohoda
  module Parsers
    module Ipm
      class ParameterListType
        include ParserCore::BaseParser

        def parameter_list_item
          array_of_at(Ipm::ParameterListItemType, ['ipm:parameterListItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:parameter_list_item] = parameter_list_item.map(&:to_h_with_attrs) if has? 'ipm:parameterListItem'

          hash
        end
      end
    end
  end
end