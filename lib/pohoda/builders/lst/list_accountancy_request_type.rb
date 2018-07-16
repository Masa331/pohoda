module Pohoda
  module Builders
    module Lst
      class ListAccountancyRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_accountancy
            root << Ftr::RequestAccountancyType.new('lst:requestAccountancy', data[:request_accountancy]).builder
          end

          root
        end
      end
    end
  end
end