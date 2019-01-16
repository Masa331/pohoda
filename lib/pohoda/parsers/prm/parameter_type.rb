module Pohoda
  module Parsers
    module Prm
      class ParameterType
        include ParserCore::BaseParser

        def user_agenda_def
          submodel_at(Prm::UserAgendaDefType, 'prm:userAgendaDef')
        end

        def form_parameter
          array_of_at(Prm::ParameterDefType, ['prm:formParameter', 'prm:parameterDef'])
        end

        def item_parameter
          array_of_at(Prm::ParameterDefType, ['prm:itemParameter', 'prm:parameterDef'])
        end

        def user_form
          array_of_at(Prm::FormItemListType, ['prm:userForm'])
        end

        def user_code
          at 'prm:userCode'
        end

        def user_code_attributes
          attributes_at 'prm:userCode'
        end

        def user_code_part
          submodel_at(Prm::UserCodePartType, 'prm:userCodePart')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:user_agenda_def] = user_agenda_def.to_h if has? 'prm:userAgendaDef'
          hash[:form_parameter] = form_parameter.map(&:to_h) if has? 'prm:formParameter'
          hash[:item_parameter] = item_parameter.map(&:to_h) if has? 'prm:itemParameter'
          hash[:user_form] = user_form.map(&:to_h) if has? 'prm:userForm'
          hash[:user_code] = user_code if has? 'prm:userCode'
          hash[:user_code_attributes] = user_code_attributes if has? 'prm:userCode'
          hash[:user_code_part] = user_code_part.to_h if has? 'prm:userCodePart'

          hash
        end
      end
    end
  end
end