module Pohoda
  module Builders
    module Bnk
      class BankDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :bank_item
            data[:bank_item].each { |i| root << Bnk::BankItemType.new('bnk:bankItem', i).builder }
          end

          root
        end
      end
    end
  end
end