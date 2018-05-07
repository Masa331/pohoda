module Pohoda
  module Parsers
    module Ipm
      class ParameterSettingsType
        include ParserCore::BaseParser

        def unit
          at 'ipm:unit'
        end

        def length
          at 'ipm:length'
        end

        def parameter_list
          submodel_at(Ipm::ParameterListType, 'ipm:parameterList')
        end

        def currency
          submodel_at(Typ::RefType, 'ipm:currency')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:unit] = unit if has? 'ipm:unit'
          hash[:length] = length if has? 'ipm:length'
          hash[:parameter_list] = parameter_list.to_h_with_attrs if has? 'ipm:parameterList'
          hash[:currency] = currency.to_h_with_attrs if has? 'ipm:currency'

          hash
        end
      end
    end
  end
end