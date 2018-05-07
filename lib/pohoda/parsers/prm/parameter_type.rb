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

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:user_agenda_def] = user_agenda_def.to_h_with_attrs if has? 'prm:userAgendaDef'
          hash[:form_parameter] = form_parameter.map(&:to_h_with_attrs) if has? 'prm:formParameter'
          hash[:item_parameter] = item_parameter.map(&:to_h_with_attrs) if has? 'prm:itemParameter'
          hash[:user_form] = user_form.map(&:to_h_with_attrs) if has? 'prm:userForm'
          hash[:user_code] = user_code if has? 'prm:userCode'

          hash
        end
      end
    end
  end
end