module Pohoda
  module Builders
    module Lst
      class ListUserCodePackType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          if data.key? :list_user_code
            data[:list_user_code].each { |i| root << Lst::ListUserCodeType.new('lst:listUserCode', i).builder }
          end

          root
        end
      end
    end
  end
end