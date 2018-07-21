module Pohoda
  module Builders
    module Typ
      class ActionTypeItem
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('typ:add', data[:add], data[:add_attributes]) if data.key? :add
          if data.key? :update
            root << Ftr::RequestItemType.new('typ:update', data[:update]).builder
          end
          if data.key? :delete
            root << Ftr::RequestItemType.new('typ:delete', data[:delete]).builder
          end

          root
        end
      end
    end
  end
end