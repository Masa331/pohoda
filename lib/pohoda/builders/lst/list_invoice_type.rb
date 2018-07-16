module Pohoda
  module Builders
    module Lst
      class ListInvoiceType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :invoice
            data[:invoice].each { |i| root << Inv::InvoiceType.new('lst:invoice', i).builder }
          end

          root
        end
      end
    end
  end
end