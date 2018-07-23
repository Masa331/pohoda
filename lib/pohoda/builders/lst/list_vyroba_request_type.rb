module Pohoda
  module Builders
    module Lst
      class ListVyrobaRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_vyroba
            root << Ftr::RequestVyrobaType.new('lst:requestVyroba', data[:request_vyroba]).builder
          end

          root
        end
      end
    end
  end
end