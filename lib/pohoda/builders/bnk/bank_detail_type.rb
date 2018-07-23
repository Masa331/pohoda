module Pohoda
  module Builders
    module Bnk
      class BankDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :bank_item
            data[:bank_item].each { |i| root << Bnk::BankItemType.new('bnk:bankItem', i).builder }
          end

          root
        end
      end
    end
  end
end