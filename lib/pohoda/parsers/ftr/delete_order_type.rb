module Pohoda
  module Parsers
    module Ftr
      class DeleteOrderType
        include ParserCore::BaseParser
        include Ftr::Groups::DeleteFilter

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          mega.inject(hash) { |memo, r| memo.merge r }
        end
      end
    end
  end
end