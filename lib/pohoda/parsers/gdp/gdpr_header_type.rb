module Pohoda
  module Parsers
    module Gdp
      class GDPRHeaderType
        include ParserCore::BaseParser

        def id
          at 'gdp:id'
        end

        def id_attributes
          attributes_at 'gdp:id'
        end

        def gdpr_type
          at 'gdp:GDPRType'
        end

        def gdpr_type_attributes
          attributes_at 'gdp:GDPRType'
        end

        def name
          at 'gdp:name'
        end

        def name_attributes
          attributes_at 'gdp:name'
        end

        def description
          at 'gdp:description'
        end

        def description_attributes
          attributes_at 'gdp:description'
        end

        def value_of_validity
          at 'gdp:valueOfValidity'
        end

        def value_of_validity_attributes
          attributes_at 'gdp:valueOfValidity'
        end

        def type_of_validity
          at 'gdp:typeOfValidity'
        end

        def type_of_validity_attributes
          attributes_at 'gdp:typeOfValidity'
        end

        def note
          at 'gdp:note'
        end

        def note_attributes
          attributes_at 'gdp:note'
        end

        def mark_record
          at 'gdp:markRecord'
        end

        def mark_record_attributes
          attributes_at 'gdp:markRecord'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'gdp:id'
          hash[:id_attributes] = id_attributes if has? 'gdp:id'
          hash[:gdpr_type] = gdpr_type if has? 'gdp:GDPRType'
          hash[:gdpr_type_attributes] = gdpr_type_attributes if has? 'gdp:GDPRType'
          hash[:name] = name if has? 'gdp:name'
          hash[:name_attributes] = name_attributes if has? 'gdp:name'
          hash[:description] = description if has? 'gdp:description'
          hash[:description_attributes] = description_attributes if has? 'gdp:description'
          hash[:value_of_validity] = value_of_validity if has? 'gdp:valueOfValidity'
          hash[:value_of_validity_attributes] = value_of_validity_attributes if has? 'gdp:valueOfValidity'
          hash[:type_of_validity] = type_of_validity if has? 'gdp:typeOfValidity'
          hash[:type_of_validity_attributes] = type_of_validity_attributes if has? 'gdp:typeOfValidity'
          hash[:note] = note if has? 'gdp:note'
          hash[:note_attributes] = note_attributes if has? 'gdp:note'
          hash[:mark_record] = mark_record if has? 'gdp:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'gdp:markRecord'

          hash
        end
      end
    end
  end
end