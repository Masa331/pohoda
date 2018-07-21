module Pohoda
  module Builders
    module Lst
      class ListPaymentType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

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