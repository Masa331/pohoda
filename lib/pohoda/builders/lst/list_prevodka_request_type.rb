module Pohoda
  module Builders
    module Lst
      class ListPrevodkaRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_prevodka
            root << Ftr::RequestPrevodkaType.new('lst:requestPrevodka', data[:request_prevodka]).builder
          end

          root
        end
      end
    end
  end
end