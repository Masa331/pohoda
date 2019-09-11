module Pohoda
  module Builders
    module Pro
      class PaymentAdvancedType
        include ParserCore::BaseBuilder
        include Pro::Groups::VoucherPaymentGroup
        include Pro::Groups::ForeignPaymentGroup
        include Pro::Groups::CreditcardPaymentGroup

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          mega.each do |r|
            r.nodes.each { |n| root << n }
          end

          root
        end
      end
    end
  end
end