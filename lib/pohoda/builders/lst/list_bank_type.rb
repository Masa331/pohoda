module Pohoda
  module Builders
    module Lst
      class ListBankType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          if data.key? :bank
            data[:bank].each { |i| root << Bnk::BankType.new('lst:bank', i).builder }
          end

          root
        end
      end
    end
  end
end