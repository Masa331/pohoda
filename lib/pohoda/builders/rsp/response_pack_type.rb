module Pohoda
  module Builders
    module Rsp
      class ResponsePackType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :response_pack_item
            data[:response_pack_item].each { |i| root << Rsp::ResponsePackItemType.new('rsp:responsePackItem', i).builder }
          end

          root
        end
      end
    end
  end
end