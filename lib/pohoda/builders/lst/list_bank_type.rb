module Pohoda
  module Builders
    module Lst
      class ListBankType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

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