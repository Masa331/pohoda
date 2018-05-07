module Pohoda
  module Builders
    module Csh
      class ActionTypeType3
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :add
            root << Ftr::RequestExtIdActionType.new('add', data[:add]).builder
          end
          if data.key? :update
            root << Ftr::RequestExtIdActionType.new('update', data[:update]).builder
          end
          if data.key? :delete
            root << Ftr::RequestExtIdType.new('delete', data[:delete]).builder
          end

          root
        end
      end
    end
  end
end