module Pohoda
  module Parsers
    module Ftr
      class FilterAdbsType
        include ParserCore::BaseParser

        def id
          at 'ftr:id'
        end

        def id_attributes
          attributes_at 'ftr:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'ftr:extId')
        end

        def company
          at 'ftr:company'
        end

        def company_attributes
          attributes_at 'ftr:company'
        end

        def name
          at 'ftr:name'
        end

        def name_attributes
          attributes_at 'ftr:name'
        end

        def city
          at 'ftr:city'
        end

        def city_attributes
          attributes_at 'ftr:city'
        end

        def street
          at 'ftr:street'
        end

        def street_attributes
          attributes_at 'ftr:street'
        end

        def zip
          at 'ftr:zip'
        end

        def zip_attributes
          attributes_at 'ftr:zip'
        end

        def ico
          at 'ftr:ico'
        end

        def ico_attributes
          attributes_at 'ftr:ico'
        end

        def dic
          at 'ftr:dic'
        end

        def dic_attributes
          attributes_at 'ftr:dic'
        end

        def number
          submodel_at(Typ::NumberADType, 'ftr:number')
        end

        def last_changes
          at 'ftr:lastChanges'
        end

        def last_changes_attributes
          attributes_at 'ftr:lastChanges'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'ftr:id'
          hash[:id_attributes] = id_attributes if has? 'ftr:id'
          hash[:ext_id] = ext_id.to_h if has? 'ftr:extId'
          hash[:company] = company if has? 'ftr:company'
          hash[:company_attributes] = company_attributes if has? 'ftr:company'
          hash[:name] = name if has? 'ftr:name'
          hash[:name_attributes] = name_attributes if has? 'ftr:name'
          hash[:city] = city if has? 'ftr:city'
          hash[:city_attributes] = city_attributes if has? 'ftr:city'
          hash[:street] = street if has? 'ftr:street'
          hash[:street_attributes] = street_attributes if has? 'ftr:street'
          hash[:zip] = zip if has? 'ftr:zip'
          hash[:zip_attributes] = zip_attributes if has? 'ftr:zip'
          hash[:ico] = ico if has? 'ftr:ico'
          hash[:ico_attributes] = ico_attributes if has? 'ftr:ico'
          hash[:dic] = dic if has? 'ftr:dic'
          hash[:dic_attributes] = dic_attributes if has? 'ftr:dic'
          hash[:number] = number.to_h if has? 'ftr:number'
          hash[:last_changes] = last_changes if has? 'ftr:lastChanges'
          hash[:last_changes_attributes] = last_changes_attributes if has? 'ftr:lastChanges'

          hash
        end
      end
    end
  end
end