module Pohoda
  module Builders
    module Lst
      class ListIntDocRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_int_doc
            root << Ftr::RequestIntDocType.new('lst:requestIntDoc', data[:request_int_doc]).builder
          end

          root
        end
      end
    end
  end
end