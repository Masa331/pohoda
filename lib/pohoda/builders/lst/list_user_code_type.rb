module Pohoda
  module Builders
    module Lst
      class ListUserCodeType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :item_user_code
            root << Lst::ItemUserCodeType.new('itemUserCode', data[:item_user_code]).builder
          end

          root
        end
      end
    end
  end
end