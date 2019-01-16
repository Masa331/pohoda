module Pohoda
  module Parsers
    module Est
      class EstablishmentHeaderType
        include ParserCore::BaseParser

        def id
          at 'est:id'
        end

        def id_attributes
          attributes_at 'est:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'est:extId')
        end

        def code
          at 'est:code'
        end

        def code_attributes
          attributes_at 'est:code'
        end

        def name
          at 'est:name'
        end

        def name_attributes
          attributes_at 'est:name'
        end

        def street
          at 'est:street'
        end

        def street_attributes
          attributes_at 'est:street'
        end

        def zip
          at 'est:zip'
        end

        def zip_attributes
          attributes_at 'est:zip'
        end

        def city
          at 'est:city'
        end

        def city_attributes
          attributes_at 'est:city'
        end

        def phone
          at 'est:phone'
        end

        def phone_attributes
          attributes_at 'est:phone'
        end

        def mobil
          at 'est:mobil'
        end

        def mobil_attributes
          attributes_at 'est:mobil'
        end

        def fax
          at 'est:fax'
        end

        def fax_attributes
          attributes_at 'est:fax'
        end

        def email
          at 'est:email'
        end

        def email_attributes
          attributes_at 'est:email'
        end

        def note
          at 'est:note'
        end

        def note_attributes
          attributes_at 'est:note'
        end

        def mark_record
          at 'est:markRecord'
        end

        def mark_record_attributes
          attributes_at 'est:markRecord'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'est:id'
          hash[:id_attributes] = id_attributes if has? 'est:id'
          hash[:ext_id] = ext_id.to_h if has? 'est:extId'
          hash[:code] = code if has? 'est:code'
          hash[:code_attributes] = code_attributes if has? 'est:code'
          hash[:name] = name if has? 'est:name'
          hash[:name_attributes] = name_attributes if has? 'est:name'
          hash[:street] = street if has? 'est:street'
          hash[:street_attributes] = street_attributes if has? 'est:street'
          hash[:zip] = zip if has? 'est:zip'
          hash[:zip_attributes] = zip_attributes if has? 'est:zip'
          hash[:city] = city if has? 'est:city'
          hash[:city_attributes] = city_attributes if has? 'est:city'
          hash[:phone] = phone if has? 'est:phone'
          hash[:phone_attributes] = phone_attributes if has? 'est:phone'
          hash[:mobil] = mobil if has? 'est:mobil'
          hash[:mobil_attributes] = mobil_attributes if has? 'est:mobil'
          hash[:fax] = fax if has? 'est:fax'
          hash[:fax_attributes] = fax_attributes if has? 'est:fax'
          hash[:email] = email if has? 'est:email'
          hash[:email_attributes] = email_attributes if has? 'est:email'
          hash[:note] = note if has? 'est:note'
          hash[:note_attributes] = note_attributes if has? 'est:note'
          hash[:mark_record] = mark_record if has? 'est:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'est:markRecord'

          hash
        end
      end
    end
  end
end