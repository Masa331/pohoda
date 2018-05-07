module Pohoda
  module Parsers
    module Inv
      class PaymentAccount
        include ParserCore::BaseParser
        include Typ::Groups::MyGroupOfAccount

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          mega.inject(hash) { |memo, r| memo.merge r }
        end
      end
    end
  end
end