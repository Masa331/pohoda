module Pohoda
  module Builders
    module Stk
      class PictureType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :action_type
            root << Typ::ActionTypeItem.new('stk:actionType', data[:action_type]).builder
          end
          root << build_element('stk:id', data[:id]) if data.key? :id
          root << build_element('stk:filepath', data[:filepath]) if data.key? :filepath
          root << build_element('stk:description', data[:description]) if data.key? :description
          root << build_element('stk:order', data[:order]) if data.key? :order

          root
        end
      end
    end
  end
end