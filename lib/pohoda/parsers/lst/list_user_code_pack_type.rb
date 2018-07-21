module Pohoda
  module Parsers
    module Lst
      class ListUserCodePackType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def list_user_code
          array_of_at(Lst::ListUserCodeType, ['lst:listUserCode'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:list_user_code] = list_user_code.map(&:to_h) if has? 'lst:listUserCode'

          hash
          super.merge(hash)
        end
      end
    end
  end
end