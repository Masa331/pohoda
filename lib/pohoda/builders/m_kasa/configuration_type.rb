module Pohoda
  module Builders
    module MKasa
      class ConfigurationType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('mKasa:pohodaPackNum', data[:pohoda_pack_num]) if data.key? :pohoda_pack_num
          if data.key? :company_info
            root << MKasa::CompanyInfoType.new('companyInfo', data[:company_info]).builder
          end
          if data.key? :kasa_info
            root << MKasa::KasaInfoType.new('kasaInfo', data[:kasa_info]).builder
          end

          root
        end
      end
    end
  end
end