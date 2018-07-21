module Pohoda
  module Builders
    module Lst
      class ListBalanceRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :request_balance
            root << Lst::RequestBalanceType.new('lst:requestBalance', data[:request_balance]).builder
          end

          root
        end
      end
    end
  end
end