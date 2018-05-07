module Pohoda
  module Builders
    module Grs
      class ActionTypeType6
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :add
            root << Ftr::RequestGroupStocksActionType.new('add', data[:add]).builder
          end
          if data.key? :update
            root << Ftr::RequestGroupStocksActionType.new('update', data[:update]).builder
          end
          if data.key? :delete
            root << Ftr::RequestGroupStocksType.new('delete', data[:delete]).builder
          end

          root
        end
      end
    end
  end
end