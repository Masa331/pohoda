module Pohoda
  module Builders
    module LCon
      class ListRequestContractType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_contract
            root << Ftr::RequestContractType.new('lCon:requestContract', data[:request_contract]).builder
          end

          root
        end
      end
    end
  end
end