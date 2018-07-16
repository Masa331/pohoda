module Pohoda
  module Builders
    module Bnk
      class BankType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :bank_header
            root << Bnk::BankHeaderType.new('bnk:bankHeader', data[:bank_header]).builder
          end
          if data.key? :bank_detail
            element = Ox::Element.new('bnk:bankDetail')
            data[:bank_detail].each { |i| element << Bnk::BankItemType.new('bnk:bankItem', i).builder }
            root << element
          end
          if data.key? :bank_summary
            root << Bnk::BankSummaryType.new('bnk:bankSummary', data[:bank_summary]).builder
          end

          root
        end
      end
    end
  end
end