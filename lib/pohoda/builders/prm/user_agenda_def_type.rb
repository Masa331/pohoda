module Pohoda
  module Builders
    module Prm
      class UserAgendaDefType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('prm:idsUserAgenda', data[:ids_user_agenda]) if data.key? :ids_user_agenda
          root << build_element('prm:name', data[:name]) if data.key? :name
          root << build_element('prm:tabMain', data[:tab_main]) if data.key? :tab_main
          root << build_element('prm:tabItem', data[:tab_item]) if data.key? :tab_item
          if data.key? :number
            root << Typ::NumberType.new('number', data[:number]).builder
          end
          root << build_element('prm:items', data[:items]) if data.key? :items
          root << build_element('prm:templates', data[:templates]) if data.key? :templates
          root << build_element('prm:documents', data[:documents]) if data.key? :documents
          root << build_element('prm:list', data[:list]) if data.key? :list
          root << build_element('prm:listIDS', data[:list_ids]) if data.key? :list_ids
          root << build_element('prm:listSText', data[:list_s_text]) if data.key? :list_s_text

          root
        end
      end
    end
  end
end