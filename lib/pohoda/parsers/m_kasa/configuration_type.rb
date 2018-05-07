module Pohoda
  module Parsers
    module MKasa
      class ConfigurationType
        include ParserCore::BaseParser

        def pohoda_pack_num
          at 'mKasa:pohodaPackNum'
        end

        def company_info
          submodel_at(MKasa::CompanyInfoType, 'mKasa:companyInfo')
        end

        def kasa_info
          submodel_at(MKasa::KasaInfoType, 'mKasa:kasaInfo')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:pohoda_pack_num] = pohoda_pack_num if has? 'mKasa:pohodaPackNum'
          hash[:company_info] = company_info.to_h_with_attrs if has? 'mKasa:companyInfo'
          hash[:kasa_info] = kasa_info.to_h_with_attrs if has? 'mKasa:kasaInfo'

          hash
        end
      end
    end
  end
end