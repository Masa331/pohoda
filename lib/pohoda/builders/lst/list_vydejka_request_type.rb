module Pohoda
  module Builders
    module Lst
      class ListVydejkaRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_vydejka
            root << Ftr::RequestVydejkaType.new('lst:requestVydejka', data[:request_vydejka]).builder
          end

          root
        end
      end
    end
  end
end