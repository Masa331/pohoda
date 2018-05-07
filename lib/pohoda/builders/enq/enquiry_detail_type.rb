module Pohoda
  module Builders
    module Enq
      class EnquiryDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :enquiry_item
            data[:enquiry_item].each { |i| root << Enq::EnquiryItemType.new('enq:enquiryItem', i).builder }
          end

          root
        end
      end
    end
  end
end