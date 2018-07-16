module Pohoda
  module Builders
    module LCon
      class ListRequestContractType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_contract
            root << Ftr::RequestContractType.new('lCon:requestContract', data[:request_contract]).builder
          end

          root
        end
      end
    end
  end
end