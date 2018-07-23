module Pohoda
  module Builders
    module Enq
      class EnquiryDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :enquiry_item
            data[:enquiry_item].each { |i| root << Enq::EnquiryItemType.new('enq:enquiryItem', i).builder }
          end

          root
        end
      end
    end
  end
end