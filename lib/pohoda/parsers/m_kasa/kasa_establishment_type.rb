module Pohoda
  module Parsers
    module MKasa
      class KasaEstablishmentType
        include ParserCore::BaseParser

        def company
          at 'mKasa:company'
        end

        def company_attributes
          attributes_at 'mKasa:company'
        end

        def city
          at 'mKasa:city'
        end

        def city_attributes
          attributes_at 'mKasa:city'
        end

        def street
          at 'mKasa:street'
        end

        def street_attributes
          attributes_at 'mKasa:street'
        end

        def zip
          at 'mKasa:zip'
        end

        def zip_attributes
          attributes_at 'mKasa:zip'
        end

        def phone
          at 'mKasa:phone'
        end

        def phone_attributes
          attributes_at 'mKasa:phone'
        end

        def mobil_phone
          at 'mKasa:mobilPhone'
        end

        def mobil_phone_attributes
          attributes_at 'mKasa:mobilPhone'
        end

        def fax
          at 'mKasa:fax'
        end

        def fax_attributes
          attributes_at 'mKasa:fax'
        end

        def email
          at 'mKasa:email'
        end

        def email_attributes
          attributes_at 'mKasa:email'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:company] = company if has? 'mKasa:company'
          hash[:company_attributes] = company_attributes if has? 'mKasa:company'
          hash[:city] = city if has? 'mKasa:city'
          hash[:city_attributes] = city_attributes if has? 'mKasa:city'
          hash[:street] = street if has? 'mKasa:street'
          hash[:street_attributes] = street_attributes if has? 'mKasa:street'
          hash[:zip] = zip if has? 'mKasa:zip'
          hash[:zip_attributes] = zip_attributes if has? 'mKasa:zip'
          hash[:phone] = phone if has? 'mKasa:phone'
          hash[:phone_attributes] = phone_attributes if has? 'mKasa:phone'
          hash[:mobil_phone] = mobil_phone if has? 'mKasa:mobilPhone'
          hash[:mobil_phone_attributes] = mobil_phone_attributes if has? 'mKasa:mobilPhone'
          hash[:fax] = fax if has? 'mKasa:fax'
          hash[:fax_attributes] = fax_attributes if has? 'mKasa:fax'
          hash[:email] = email if has? 'mKasa:email'
          hash[:email_attributes] = email_attributes if has? 'mKasa:email'

          hash
        end
      end
    end
  end
end