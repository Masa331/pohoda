module Pohoda
  module Parsers
    module Ftr
      class DeleteOrderType
        include ParserCore::BaseParser
        include Ftr::Groups::DeleteFilter

        def to_h
          hash = {}
          hash[:attributes] = attributes

          mega.inject(hash) { |memo, r| memo.merge r }
        end
      end
    end
  end
end