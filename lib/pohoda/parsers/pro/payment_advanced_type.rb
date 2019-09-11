module Pohoda
  module Parsers
    module Pro
      class PaymentAdvancedType
        include ParserCore::BaseParser
        include Pro::Groups::VoucherPaymentGroup
        include Pro::Groups::ForeignPaymentGroup
        include Pro::Groups::CreditcardPaymentGroup

        def to_h
          hash = {}
          hash[:attributes] = attributes

          mega.inject(hash) { |memo, r| memo.merge r }
        end
      end
    end
  end
end