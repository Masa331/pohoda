module Pohoda
  module Builders
    module Pro
      module Groups
        module VoucherPaymentGroup
          def builder
            root = Ox::Element.new(name)
            root = add_attributes_and_namespaces(root)

            root << build_element('pro:valueFoodVoucher', data[:value_food_voucher], data[:value_food_voucher_attributes]) if data.key? :value_food_voucher

            root
          end
        end
      end
    end
  end
end