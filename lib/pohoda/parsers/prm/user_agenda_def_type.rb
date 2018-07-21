module Pohoda
  module Parsers
    module Prm
      class UserAgendaDefType
        include ParserCore::BaseParser

        def ids_user_agenda
          at 'prm:idsUserAgenda'
        end

        def ids_user_agenda_attributes
          attributes_at 'prm:idsUserAgenda'
        end

        def name
          at 'prm:name'
        end

        def name_attributes
          attributes_at 'prm:name'
        end

        def tab_main
          at 'prm:tabMain'
        end

        def tab_main_attributes
          attributes_at 'prm:tabMain'
        end

        def tab_item
          at 'prm:tabItem'
        end

        def tab_item_attributes
          attributes_at 'prm:tabItem'
        end

        def number
          submodel_at(Typ::NumberType, 'prm:number')
        end

        def items
          at 'prm:items'
        end

        def items_attributes
          attributes_at 'prm:items'
        end

        def templates
          at 'prm:templates'
        end

        def templates_attributes
          attributes_at 'prm:templates'
        end

        def documents
          at 'prm:documents'
        end

        def documents_attributes
          attributes_at 'prm:documents'
        end

        def list
          at 'prm:list'
        end

        def list_attributes
          attributes_at 'prm:list'
        end

        def list_ids
          at 'prm:listIDS'
        end

        def list_ids_attributes
          attributes_at 'prm:listIDS'
        end

        def list_s_text
          at 'prm:listSText'
        end

        def list_s_text_attributes
          attributes_at 'prm:listSText'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:ids_user_agenda] = ids_user_agenda if has? 'prm:idsUserAgenda'
          hash[:ids_user_agenda_attributes] = ids_user_agenda_attributes if has? 'prm:idsUserAgenda'
          hash[:name] = name if has? 'prm:name'
          hash[:name_attributes] = name_attributes if has? 'prm:name'
          hash[:tab_main] = tab_main if has? 'prm:tabMain'
          hash[:tab_main_attributes] = tab_main_attributes if has? 'prm:tabMain'
          hash[:tab_item] = tab_item if has? 'prm:tabItem'
          hash[:tab_item_attributes] = tab_item_attributes if has? 'prm:tabItem'
          hash[:number] = number.to_h if has? 'prm:number'
          hash[:items] = items if has? 'prm:items'
          hash[:items_attributes] = items_attributes if has? 'prm:items'
          hash[:templates] = templates if has? 'prm:templates'
          hash[:templates_attributes] = templates_attributes if has? 'prm:templates'
          hash[:documents] = documents if has? 'prm:documents'
          hash[:documents_attributes] = documents_attributes if has? 'prm:documents'
          hash[:list] = list if has? 'prm:list'
          hash[:list_attributes] = list_attributes if has? 'prm:list'
          hash[:list_ids] = list_ids if has? 'prm:listIDS'
          hash[:list_ids_attributes] = list_ids_attributes if has? 'prm:listIDS'
          hash[:list_s_text] = list_s_text if has? 'prm:listSText'
          hash[:list_s_text_attributes] = list_s_text_attributes if has? 'prm:listSText'

          hash
        end
      end
    end
  end
end