module Pohoda
  module Parsers
    module MKasa
      class ConfigurationType
        include ParserCore::BaseParser

        def pohoda_pack_num
          at 'mKasa:pohodaPackNum'
        end

        def pohoda_pack_num_attributes
          attributes_at 'mKasa:pohodaPackNum'
        end

        def company_info
          submodel_at(MKasa::CompanyInfoType, 'mKasa:companyInfo')
        end

        def kasa_info
          submodel_at(MKasa::KasaInfoType, 'mKasa:kasaInfo')
        end

        def pohoda_restriction
          submodel_at(MKasa::PohodaRestrictionType, 'mKasa:pohodaRestriction')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:pohoda_pack_num] = pohoda_pack_num if has? 'mKasa:pohodaPackNum'
          hash[:pohoda_pack_num_attributes] = pohoda_pack_num_attributes if has? 'mKasa:pohodaPackNum'
          hash[:company_info] = company_info.to_h if has? 'mKasa:companyInfo'
          hash[:kasa_info] = kasa_info.to_h if has? 'mKasa:kasaInfo'
          hash[:pohoda_restriction] = pohoda_restriction.to_h if has? 'mKasa:pohodaRestriction'

          hash
        end
      end
    end
  end
end