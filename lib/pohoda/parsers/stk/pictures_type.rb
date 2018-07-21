module Pohoda
  module Parsers
    module Stk
      class PicturesType
        include ParserCore::BaseParser

        def picture
          array_of_at(Stk::PictureType, ['stk:picture'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:picture] = picture.map(&:to_h) if has? 'stk:picture'

          hash
        end
      end
    end
  end
end