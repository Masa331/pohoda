module Pohoda
  module Builders
    module Ilt
      class InventoryListsHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('ilt:id', data[:id]) if data.key? :id
          if data.key? :number
            root << Typ::NumberType.new('ilt:number', data[:number]).builder
          end
          root << build_element('ilt:date', data[:date]) if data.key? :date
          root << build_element('ilt:text', data[:text]) if data.key? :text
          if data.key? :store
            root << Typ::RefType.new('ilt:store', data[:store]).builder
          end
          if data.key? :centre
            root << Typ::RefType.new('ilt:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('ilt:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('ilt:contract', data[:contract]).builder
          end
          root << build_element('ilt:note', data[:note]) if data.key? :note
          root << build_element('ilt:markRecord', data[:mark_record]) if data.key? :mark_record

          root
        end
      end
    end
  end
end