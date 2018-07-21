module Pohoda
  module Builders
    module Ord
      class ActionTypeType2
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('ord:add', data[:add], data[:add_attributes]) if data.key? :add
          if data.key? :delete
            root << Ftr::DeleteOrderType.new('ord:delete', data[:delete]).builder
          end

          root
        end
      end
    end
  end
end