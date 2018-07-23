module Pohoda
  module Builders
    module Prm
      class UserAgendaDefType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('prm:idsUserAgenda', data[:ids_user_agenda], data[:ids_user_agenda_attributes]) if data.key? :ids_user_agenda
          root << build_element('prm:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('prm:tabMain', data[:tab_main], data[:tab_main_attributes]) if data.key? :tab_main
          root << build_element('prm:tabItem', data[:tab_item], data[:tab_item_attributes]) if data.key? :tab_item
          if data.key? :number
            root << Typ::NumberType.new('prm:number', data[:number]).builder
          end
          root << build_element('prm:items', data[:items], data[:items_attributes]) if data.key? :items
          root << build_element('prm:templates', data[:templates], data[:templates_attributes]) if data.key? :templates
          root << build_element('prm:documents', data[:documents], data[:documents_attributes]) if data.key? :documents
          root << build_element('prm:list', data[:list], data[:list_attributes]) if data.key? :list
          root << build_element('prm:listIDS', data[:list_ids], data[:list_ids_attributes]) if data.key? :list_ids
          root << build_element('prm:listSText', data[:list_s_text], data[:list_s_text_attributes]) if data.key? :list_s_text

          root
        end
      end
    end
  end
end