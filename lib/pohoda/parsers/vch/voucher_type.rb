module Pohoda
  module Parsers
    module Vch
      class VoucherType
        include ParserCore::BaseParser

        def voucher_header
          submodel_at(Vch::VoucherHeaderType, 'vch:voucherHeader')
        end

        def voucher_detail
          submodel_at(Vch::VoucherDetailType, 'vch:voucherDetail')
        end

        def voucher_summary
          submodel_at(Vch::VoucherSummaryType, 'vch:voucherSummary')
        end

        def eet
          submodel_at(Typ::EETType, 'vch:EET')
        end

        def print
          array_of_at(Prn::PrinterSettingsType, ['vch:print', 'prn:printerSettings'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:voucher_header] = voucher_header.to_h_with_attrs if has? 'vch:voucherHeader'
          hash[:voucher_detail] = voucher_detail.to_h_with_attrs if has? 'vch:voucherDetail'
          hash[:voucher_summary] = voucher_summary.to_h_with_attrs if has? 'vch:voucherSummary'
          hash[:eet] = eet.to_h_with_attrs if has? 'vch:EET'
          hash[:print] = print.map(&:to_h_with_attrs) if has? 'vch:print'

          hash
        end
      end
    end
  end
end