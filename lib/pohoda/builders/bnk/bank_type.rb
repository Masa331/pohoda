module Pohoda
  module Builders
    module Bnk
      class BankType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :bank_header
            root << Bnk::BankHeaderType.new('bankHeader', data[:bank_header]).builder
          end
          if data.key? :bank_detail
            root << Bnk::BankDetailType.new('bankDetail', data[:bank_detail]).builder
          end
          if data.key? :bank_summary
            root << Bnk::BankSummaryType.new('bankSummary', data[:bank_summary]).builder
          end

          root
        end
      end
    end
  end
end