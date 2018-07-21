module Pohoda
  module Builders
    module Vch
      class VoucherType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :voucher_header
            root << Vch::VoucherHeaderType.new('vch:voucherHeader', data[:voucher_header]).builder
          end
          if data.key? :voucher_detail
            root << Vch::VoucherDetailType.new('vch:voucherDetail', data[:voucher_detail]).builder
          end
          if data.key? :voucher_summary
            root << Vch::VoucherSummaryType.new('vch:voucherSummary', data[:voucher_summary]).builder
          end
          if data.key? :eet
            root << Typ::EETType.new('vch:EET', data[:eet]).builder
          end
          if data.key? :print
            element = Ox::Element.new('vch:print')
            data[:print].each { |i| element << Prn::PrinterSettingsType.new('prn:printerSettings', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end