module Pohoda
  module Parsers
    module Ipm
      class IntParamType
        include ParserCore::BaseParser

        def id
          at 'ipm:id'
        end

        def id_attributes
          attributes_at 'ipm:id'
        end

        def name
          at 'ipm:name'
        end

        def name_attributes
          attributes_at 'ipm:name'
        end

        def description
          at 'ipm:description'
        end

        def description_attributes
          attributes_at 'ipm:description'
        end

        def parameter_type
          at 'ipm:parameterType'
        end

        def parameter_type_attributes
          attributes_at 'ipm:parameterType'
        end

        def parameter_settings
          submodel_at(Ipm::ParameterSettingsType, 'ipm:parameterSettings')
        end

        def mark_record
          at 'ipm:markRecord'
        end

        def mark_record_attributes
          attributes_at 'ipm:markRecord'
        end

        def note
          at 'ipm:note'
        end

        def note_attributes
          attributes_at 'ipm:note'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'ipm:id'
          hash[:id_attributes] = id_attributes if has? 'ipm:id'
          hash[:name] = name if has? 'ipm:name'
          hash[:name_attributes] = name_attributes if has? 'ipm:name'
          hash[:description] = description if has? 'ipm:description'
          hash[:description_attributes] = description_attributes if has? 'ipm:description'
          hash[:parameter_type] = parameter_type if has? 'ipm:parameterType'
          hash[:parameter_type_attributes] = parameter_type_attributes if has? 'ipm:parameterType'
          hash[:parameter_settings] = parameter_settings.to_h if has? 'ipm:parameterSettings'
          hash[:mark_record] = mark_record if has? 'ipm:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'ipm:markRecord'
          hash[:note] = note if has? 'ipm:note'
          hash[:note_attributes] = note_attributes if has? 'ipm:note'

          hash
        end
      end
    end
  end
end