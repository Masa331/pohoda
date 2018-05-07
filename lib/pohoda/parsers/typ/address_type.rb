module Pohoda
  module Parsers
    module Typ
      class AddressType
        include ParserCore::BaseParser

        def company
          at 'typ:company'
        end

        def division
          at 'typ:division'
        end

        def name
          at 'typ:name'
        end

        def city
          at 'typ:city'
        end

        def street
          at 'typ:street'
        end

        def zip
          at 'typ:zip'
        end

        def ico
          at 'typ:ico'
        end

        def dic
          at 'typ:dic'
        end

        def vat_payer_type
          at 'typ:VATPayerType'
        end

        def ic_dph
          at 'typ:icDph'
        end

        def country
          submodel_at(Typ::RefType, 'typ:country')
        end

        def phone
          at 'typ:phone'
        end

        def mobil_phone
          at 'typ:mobilPhone'
        end

        def fax
          at 'typ:fax'
        end

        def email
          at 'typ:email'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:company] = company if has? 'typ:company'
          hash[:division] = division if has? 'typ:division'
          hash[:name] = name if has? 'typ:name'
          hash[:city] = city if has? 'typ:city'
          hash[:street] = street if has? 'typ:street'
          hash[:zip] = zip if has? 'typ:zip'
          hash[:ico] = ico if has? 'typ:ico'
          hash[:dic] = dic if has? 'typ:dic'
          hash[:vat_payer_type] = vat_payer_type if has? 'typ:VATPayerType'
          hash[:ic_dph] = ic_dph if has? 'typ:icDph'
          hash[:country] = country.to_h_with_attrs if has? 'typ:country'
          hash[:phone] = phone if has? 'typ:phone'
          hash[:mobil_phone] = mobil_phone if has? 'typ:mobilPhone'
          hash[:fax] = fax if has? 'typ:fax'
          hash[:email] = email if has? 'typ:email'

          hash
        end
      end
    end
  end
end