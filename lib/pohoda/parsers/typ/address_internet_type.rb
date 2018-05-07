module Pohoda
  module Parsers
    module Typ
      class AddressInternetType
        include ParserCore::BaseParser

        def company
          at 'typ:company'
        end

        def title
          at 'typ:title'
        end

        def surname
          at 'typ:surname'
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

        def number
          at 'typ:number'
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

        def ic_dph
          at 'typ:icDph'
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

        def www
          at 'typ:www'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:company] = company if has? 'typ:company'
          hash[:title] = title if has? 'typ:title'
          hash[:surname] = surname if has? 'typ:surname'
          hash[:name] = name if has? 'typ:name'
          hash[:city] = city if has? 'typ:city'
          hash[:street] = street if has? 'typ:street'
          hash[:number] = number if has? 'typ:number'
          hash[:zip] = zip if has? 'typ:zip'
          hash[:ico] = ico if has? 'typ:ico'
          hash[:dic] = dic if has? 'typ:dic'
          hash[:ic_dph] = ic_dph if has? 'typ:icDph'
          hash[:phone] = phone if has? 'typ:phone'
          hash[:mobil_phone] = mobil_phone if has? 'typ:mobilPhone'
          hash[:fax] = fax if has? 'typ:fax'
          hash[:email] = email if has? 'typ:email'
          hash[:www] = www if has? 'typ:www'

          hash
        end
      end
    end
  end
end