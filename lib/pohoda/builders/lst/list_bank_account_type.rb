module Pohoda
  module Builders
    module Lst
      class ListBankAccountType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

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