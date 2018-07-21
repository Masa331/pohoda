module Pohoda
  module Parsers
    module Typ
      class AddressInternetType
        include ParserCore::BaseParser

        def company
          at 'typ:company'
        end

        def company_attributes
          attributes_at 'typ:company'
        end

        def title
          at 'typ:title'
        end

        def title_attributes
          attributes_at 'typ:title'
        end

        def surname
          at 'typ:surname'
        end

        def surname_attributes
          attributes_at 'typ:surname'
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

        def number
          at 'typ:number'
        end

        def number_attributes
          attributes_at 'typ:number'
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

        def ic_dph
          at 'typ:icDph'
        end

        def ic_dph_attributes
          attributes_at 'typ:icDph'
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

        def www
          at 'typ:www'
        end

        def www_attributes
          attributes_at 'typ:www'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:company] = company if has? 'typ:company'
          hash[:company_attributes] = company_attributes if has? 'typ:company'
          hash[:title] = title if has? 'typ:title'
          hash[:title_attributes] = title_attributes if has? 'typ:title'
          hash[:surname] = surname if has? 'typ:surname'
          hash[:surname_attributes] = surname_attributes if has? 'typ:surname'
          hash[:name] = name if has? 'typ:name'
          hash[:name_attributes] = name_attributes if has? 'typ:name'
          hash[:city] = city if has? 'typ:city'
          hash[:city_attributes] = city_attributes if has? 'typ:city'
          hash[:street] = street if has? 'typ:street'
          hash[:street_attributes] = street_attributes if has? 'typ:street'
          hash[:number] = number if has? 'typ:number'
          hash[:number_attributes] = number_attributes if has? 'typ:number'
          hash[:zip] = zip if has? 'typ:zip'
          hash[:zip_attributes] = zip_attributes if has? 'typ:zip'
          hash[:ico] = ico if has? 'typ:ico'
          hash[:ico_attributes] = ico_attributes if has? 'typ:ico'
          hash[:dic] = dic if has? 'typ:dic'
          hash[:dic_attributes] = dic_attributes if has? 'typ:dic'
          hash[:ic_dph] = ic_dph if has? 'typ:icDph'
          hash[:ic_dph_attributes] = ic_dph_attributes if has? 'typ:icDph'
          hash[:phone] = phone if has? 'typ:phone'
          hash[:phone_attributes] = phone_attributes if has? 'typ:phone'
          hash[:mobil_phone] = mobil_phone if has? 'typ:mobilPhone'
          hash[:mobil_phone_attributes] = mobil_phone_attributes if has? 'typ:mobilPhone'
          hash[:fax] = fax if has? 'typ:fax'
          hash[:fax_attributes] = fax_attributes if has? 'typ:fax'
          hash[:email] = email if has? 'typ:email'
          hash[:email_attributes] = email_attributes if has? 'typ:email'
          hash[:www] = www if has? 'typ:www'
          hash[:www_attributes] = www_attributes if has? 'typ:www'

          hash
        end
      end
    end
  end
end