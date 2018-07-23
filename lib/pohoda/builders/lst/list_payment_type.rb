module Pohoda
  module Builders
    module Lst
      class ListPaymentType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :payment
            data[:payment].each { |i| root << Pay::PaymentTypeRoot.new('lst:payment', i).builder }
          end

          root
        end
      end
    end
  end
end