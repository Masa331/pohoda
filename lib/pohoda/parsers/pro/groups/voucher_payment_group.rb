module Pohoda
  module Parsers
    module Pro
      module Groups
        module VoucherPaymentGroup
          def value_food_voucher
            at 'pro:valueFoodVoucher'
          end

          def value_food_voucher_attributes
            attributes_at 'pro:valueFoodVoucher'
          end

          def to_h
            hash = {}
            hash[:attributes] = attributes

            hash[:value_food_voucher] = value_food_voucher if has? 'pro:valueFoodVoucher'
            hash[:value_food_voucher_attributes] = value_food_voucher_attributes if has? 'pro:valueFoodVoucher'

            hash
          end
        end
      end
    end
  end
end