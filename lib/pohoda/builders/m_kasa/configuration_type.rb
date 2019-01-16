module Pohoda
  module Builders
    module MKasa
      class ConfigurationType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('mKasa:pohodaPackNum', data[:pohoda_pack_num], data[:pohoda_pack_num_attributes]) if data.key? :pohoda_pack_num
          if data.key? :company_info
            root << MKasa::CompanyInfoType.new('mKasa:companyInfo', data[:company_info]).builder
          end
          if data.key? :kasa_info
            root << MKasa::KasaInfoType.new('mKasa:kasaInfo', data[:kasa_info]).builder
          end
          if data.key? :pohoda_restriction
            root << MKasa::PohodaRestrictionType.new('mKasa:pohodaRestriction', data[:pohoda_restriction]).builder
          end

          root
        end
      end
    end
  end
end