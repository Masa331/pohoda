module Pohoda
  module Parsers
    module Prm
      class UserAgendaDefType
        include ParserCore::BaseParser

        def ids_user_agenda
          at 'prm:idsUserAgenda'
        end

        def name
          at 'prm:name'
        end

        def tab_main
          at 'prm:tabMain'
        end

        def tab_item
          at 'prm:tabItem'
        end

        def number
          submodel_at(Typ::NumberType, 'prm:number')
        end

        def items
          at 'prm:items'
        end

        def templates
          at 'prm:templates'
        end

        def documents
          at 'prm:documents'
        end

        def list
          at 'prm:list'
        end

        def list_ids
          at 'prm:listIDS'
        end

        def list_s_text
          at 'prm:listSText'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:ids_user_agenda] = ids_user_agenda if has? 'prm:idsUserAgenda'
          hash[:name] = name if has? 'prm:name'
          hash[:tab_main] = tab_main if has? 'prm:tabMain'
          hash[:tab_item] = tab_item if has? 'prm:tabItem'
          hash[:number] = number.to_h_with_attrs if has? 'prm:number'
          hash[:items] = items if has? 'prm:items'
          hash[:templates] = templates if has? 'prm:templates'
          hash[:documents] = documents if has? 'prm:documents'
          hash[:list] = list if has? 'prm:list'
          hash[:list_ids] = list_ids if has? 'prm:listIDS'
          hash[:list_s_text] = list_s_text if has? 'prm:listSText'

          hash
        end
      end
    end
  end
end