module Pohoda
  module Builders
    module Lst
      class ListBankAccountType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :bank_account
            data[:bank_account].each { |i| root << Bka::BankAccountType.new('lst:bankAccount', i).builder }
          end

          root
        end
      end
    end
  end
end