module Pohoda
  module Builders
    module Lst
      class ListBankRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_bank
            root << Ftr::RequestBankType.new('lst:requestBank', data[:request_bank]).builder
          end

          root
        end
      end
    end
  end
end