module Pohoda
  module Parsers
    module Typ
      class AddressType
        include ParserCore::BaseParser

        def company
          at 'typ:company'
        end

        def company_attributes
          attributes_at 'typ:company'
        end

        def division
          at 'typ:division'
        end

        def division_attributes
          attributes_at 'typ:division'
        end

        def name
          at 'typ:name'
        end

        def name_attributes
          attributes_at 'typ:name'
        end

        def city
          at 'typ:city'
        end

        def city_attributes
          attributes_at 'typ:city'
        end

        def street
          at 'typ:street'
        end

        def street_attributes
          attributes_at 'typ:street'
        end

        def zip
          at 'typ:zip'
        end

        def zip_attributes
          attributes_at 'typ:zip'
        end

        def ico
          at 'typ:ico'
        end

        def ico_attributes
          attributes_at 'typ:ico'
        end

        def dic
          at 'typ:dic'
        end

        def dic_attributes
          attributes_at 'typ:dic'
        end

        def vat_payer_type
          at 'typ:VATPayerType'
        end

        def vat_payer_type_attributes
          attributes_at 'typ:VATPayerType'
        end

        def ic_dph
          at 'typ:icDph'
        end

        def ic_dph_attributes
          attributes_at 'typ:icDph'
        end

        def country
          submodel_at(Typ::RefType, 'typ:country')
        end

        def phone
          at 'typ:phone'
        end

        def phone_attributes
          attributes_at 'typ:phone'
        end

        def mobil_phone
          at 'typ:mobilPhone'
        end

        def mobil_phone_attributes
          attributes_at 'typ:mobilPhone'
        end

        def fax
          at 'typ:fax'
        end

        def fax_attributes
          attributes_at 'typ:fax'
        end

        def email
          at 'typ:email'
        end

        def email_attributes
          attributes_at 'typ:email'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:company] = company if has? 'typ:company'
          hash[:company_attributes] = company_attributes if has? 'typ:company'
          hash[:division] = division if has? 'typ:division'
          hash[:division_attributes] = division_attributes if has? 'typ:division'
          hash[:name] = name if has? 'typ:name'
          hash[:name_attributes] = name_attributes if has? 'typ:name'
          hash[:city] = city if has? 'typ:city'
          hash[:city_attributes] = city_attributes if has? 'typ:city'
          hash[:street] = street if has? 'typ:street'
          hash[:street_attributes] = street_attributes if has? 'typ:street'
          hash[:zip] = zip if has? 'typ:zip'
          hash[:zip_attributes] = zip_attributes if has? 'typ:zip'
          hash[:ico] = ico if has? 'typ:ico'
          hash[:ico_attributes] = ico_attributes if has? 'typ:ico'
          hash[:dic] = dic if has? 'typ:dic'
          hash[:dic_attributes] = dic_attributes if has? 'typ:dic'
          hash[:vat_payer_type] = vat_payer_type if has? 'typ:VATPayerType'
          hash[:vat_payer_type_attributes] = vat_payer_type_attributes if has? 'typ:VATPayerType'
          hash[:ic_dph] = ic_dph if has? 'typ:icDph'
          hash[:ic_dph_attributes] = ic_dph_attributes if has? 'typ:icDph'
          hash[:country] = country.to_h if has? 'typ:country'
          hash[:phone] = phone if has? 'typ:phone'
          hash[:phone_attributes] = phone_attributes if has? 'typ:phone'
          hash[:mobil_phone] = mobil_phone if has? 'typ:mobilPhone'
          hash[:mobil_phone_attributes] = mobil_phone_attributes if has? 'typ:mobilPhone'
          hash[:fax] = fax if has? 'typ:fax'
          hash[:fax_attributes] = fax_attributes if has? 'typ:fax'
          hash[:email] = email if has? 'typ:email'
          hash[:email_attributes] = email_attributes if has? 'typ:email'

          hash
        end
      end
    end
  end
end