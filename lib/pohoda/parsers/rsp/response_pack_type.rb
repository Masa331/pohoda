module Pohoda
  module Parsers
    module Rsp
      class ResponsePackType
        include ParserCore::BaseParser

        def response_pack_item
          array_of_at(Rsp::ResponsePackItemType, ['rsp:responsePackItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:response_pack_item] = response_pack_item.map(&:to_h) if has? 'rsp:responsePackItem'

          hash
        end
      end
    end
  end
end