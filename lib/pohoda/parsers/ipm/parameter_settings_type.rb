module Pohoda
  module Parsers
    module Ipm
      class ParameterSettingsType
        include ParserCore::BaseParser

        def unit
          at 'ipm:unit'
        end

        def unit_attributes
          attributes_at 'ipm:unit'
        end

        def length
          at 'ipm:length'
        end

        def length_attributes
          attributes_at 'ipm:length'
        end

        def parameter_list
          array_of_at(Ipm::ParameterListItemType, ['ipm:parameterList', 'ipm:parameterListItem'])
        end

        def currency
          submodel_at(Typ::RefType, 'ipm:currency')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:unit] = unit if has? 'ipm:unit'
          hash[:unit_attributes] = unit_attributes if has? 'ipm:unit'
          hash[:length] = length if has? 'ipm:length'
          hash[:length_attributes] = length_attributes if has? 'ipm:length'
          hash[:parameter_list] = parameter_list.map(&:to_h) if has? 'ipm:parameterList'
          hash[:currency] = currency.to_h if has? 'ipm:currency'

          hash
        end
      end
    end
  end
end