module Pohoda
  module Builders
    module Lst
      class ListIntDocRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_int_doc
            root << Ftr::RequestIntDocType.new('lst:requestIntDoc', data[:request_int_doc]).builder
          end

          root
        end
      end
    end
  end
end