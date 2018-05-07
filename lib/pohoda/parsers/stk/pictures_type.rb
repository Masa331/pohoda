module Pohoda
  module Parsers
    module Stk
      class PicturesType
        include ParserCore::BaseParser

        def picture
          array_of_at(Stk::PictureType, ['stk:picture'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:picture] = picture.map(&:to_h_with_attrs) if has? 'stk:picture'

          hash
        end
      end
    end
  end
end