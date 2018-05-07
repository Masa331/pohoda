module Pohoda
  module Builders
    module Vch
      class VoucherType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :voucher_header
            root << Vch::VoucherHeaderType.new('voucherHeader', data[:voucher_header]).builder
          end
          if data.key? :voucher_detail
            root << Vch::VoucherDetailType.new('voucherDetail', data[:voucher_detail]).builder
          end
          if data.key? :voucher_summary
            root << Vch::VoucherSummaryType.new('voucherSummary', data[:voucher_summary]).builder
          end
          if data.key? :eet
            root << Typ::EETType.new('EET', data[:eet]).builder
          end
          if data.key? :print
            root << Prn::AgendaPrintType.new('print', data[:print]).builder
          end

          root
        end
      end
    end
  end
end