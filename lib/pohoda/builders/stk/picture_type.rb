module Pohoda
  module Builders
    module Stk
      class PictureType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :action_type
            root << Typ::ActionTypeItem.new('stk:actionType', data[:action_type]).builder
          end
          root << build_element('stk:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('stk:filepath', data[:filepath], data[:filepath_attributes]) if data.key? :filepath
          root << build_element('stk:description', data[:description], data[:description_attributes]) if data.key? :description
          root << build_element('stk:order', data[:order], data[:order_attributes]) if data.key? :order

          root
        end
      end
    end
  end
end