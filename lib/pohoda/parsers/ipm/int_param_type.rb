module Pohoda
  module Parsers
    module Ipm
      class IntParamType
        include ParserCore::BaseParser

        def id
          at 'ipm:id'
        end

        def name
          at 'ipm:name'
        end

        def description
          at 'ipm:description'
        end

        def parameter_type
          at 'ipm:parameterType'
        end

        def parameter_settings
          submodel_at(Ipm::ParameterSettingsType, 'ipm:parameterSettings')
        end

        def mark_record
          at 'ipm:markRecord'
        end

        def note
          at 'ipm:note'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'ipm:id'
          hash[:name] = name if has? 'ipm:name'
          hash[:description] = description if has? 'ipm:description'
          hash[:parameter_type] = parameter_type if has? 'ipm:parameterType'
          hash[:parameter_settings] = parameter_settings.to_h_with_attrs if has? 'ipm:parameterSettings'
          hash[:mark_record] = mark_record if has? 'ipm:markRecord'
          hash[:note] = note if has? 'ipm:note'

          hash
        end
      end
    end
  end
end