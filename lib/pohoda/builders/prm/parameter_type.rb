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
            root << Prm::UserAgendaDefType.new('userAgendaDef', data[:user_agenda_def]).builder
          end
          if data.key? :form_parameter
            root << Prm::ParameterItemListType.new('formParameter', data[:form_parameter]).builder
          end
          if data.key? :item_parameter
            root << Prm::ParameterItemListType.new('itemParameter', data[:item_parameter]).builder
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