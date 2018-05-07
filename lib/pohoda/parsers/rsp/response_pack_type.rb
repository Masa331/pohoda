module Pohoda
  module Parsers
    module Rsp
      class ResponsePackType
        include ParserCore::BaseParser

        def response_pack_item
          array_of_at(Rsp::ResponsePackItemType, ['rsp:responsePackItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:response_pack_item] = response_pack_item.map(&:to_h_with_attrs) if has? 'rsp:responsePackItem'

          hash
        end
      end
    end
  end
end