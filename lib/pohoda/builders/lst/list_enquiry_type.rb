module Pohoda
  module Builders
    module Lst
      class ListEnquiryType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :enquiry
            data[:enquiry].each { |i| root << Enq::EnquiryType.new('lst:enquiry', i).builder }
          end

          root
        end
      end
    end
  end
end