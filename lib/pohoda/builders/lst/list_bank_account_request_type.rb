module Pohoda
  module Builders
    module Lst
      class ListBankAccountRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_bank_account
            root << Ftr::RequestBankAccountType.new('lst:requestBankAccount', data[:request_bank_account]).builder
          end

          root
        end
      end
    end
  end
end