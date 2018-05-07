module Pohoda
  module Builders
    module Lst
      class ListBankAccountRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_bank_account
            root << Ftr::RequestBankAccountType.new('requestBankAccount', data[:request_bank_account]).builder
          end

          root
        end
      end
    end
  end
end