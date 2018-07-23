module Pohoda
  module Builders
    module Rsp
      class ResponsePackType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :response_pack_item
            data[:response_pack_item].each { |i| root << Rsp::ResponsePackItemType.new('rsp:responsePackItem', i).builder }
          end

          root
        end
      end
    end
  end
end