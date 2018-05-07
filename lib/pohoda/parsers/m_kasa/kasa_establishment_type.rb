module Pohoda
  module Parsers
    module MKasa
      class KasaEstablishmentType
        include ParserCore::BaseParser

        def company
          at 'mKasa:company'
        end

        def city
          at 'mKasa:city'
        end

        def street
          at 'mKasa:street'
        end

        def zip
          at 'mKasa:zip'
        end

        def phone
          at 'mKasa:phone'
        end

        def mobil_phone
          at 'mKasa:mobilPhone'
        end

        def fax
          at 'mKasa:fax'
        end

        def email
          at 'mKasa:email'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:company] = company if has? 'mKasa:company'
          hash[:city] = city if has? 'mKasa:city'
          hash[:street] = street if has? 'mKasa:street'
          hash[:zip] = zip if has? 'mKasa:zip'
          hash[:phone] = phone if has? 'mKasa:phone'
          hash[:mobil_phone] = mobil_phone if has? 'mKasa:mobilPhone'
          hash[:fax] = fax if has? 'mKasa:fax'
          hash[:email] = email if has? 'mKasa:email'

          hash
        end
      end
    end
  end
end