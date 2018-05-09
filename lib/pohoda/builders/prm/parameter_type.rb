module Pohoda
  module Builders
    module Prm
      class ParameterType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :user_agenda_def
            root << Prm::UserAgendaDefType.new('prm:userAgendaDef', data[:user_agenda_def]).builder
          end
          if data.key? :form_parameter
            element = Ox::Element.new('prm:formParameter')
            data[:form_parameter].each { |i| element << Prm::ParameterDefType.new('prm:parameterDef', i).builder }
            root << element
          end
          if data.key? :item_parameter
            element = Ox::Element.new('prm:itemParameter')
            data[:item_parameter].each { |i| element << Prm::ParameterDefType.new('prm:parameterDef', i).builder }
            root << element
          end
          if data.key? :user_form
            data[:user_form].each { |i| root << Prm::FormItemListType.new('prm:userForm', i).builder }
          end
          root << build_element('prm:userCode', data[:user_code]) if data.key? :user_code

          root
        end
      end
    end
  end
end