module Pohoda
  module Parsers
    module Ftr
      class FilterAdbsType
        include ParserCore::BaseParser

        def id
          at 'ftr:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'ftr:extId')
        end

        def company
          at 'ftr:company'
        end

        def name
          at 'ftr:name'
        end

        def city
          at 'ftr:city'
        end

        def street
          at 'ftr:street'
        end

        def zip
          at 'ftr:zip'
        end

        def ico
          at 'ftr:ico'
        end

        def dic
          at 'ftr:dic'
        end

        def number
          submodel_at(Typ::NumberADType, 'ftr:number')
        end

        def last_changes
          at 'ftr:lastChanges'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'ftr:id'
          hash[:ext_id] = ext_id.to_h_with_attrs if has? 'ftr:extId'
          hash[:company] = company if has? 'ftr:company'
          hash[:name] = name if has? 'ftr:name'
          hash[:city] = city if has? 'ftr:city'
          hash[:street] = street if has? 'ftr:street'
          hash[:zip] = zip if has? 'ftr:zip'
          hash[:ico] = ico if has? 'ftr:ico'
          hash[:dic] = dic if has? 'ftr:dic'
          hash[:number] = number.to_h_with_attrs if has? 'ftr:number'
          hash[:last_changes] = last_changes if has? 'ftr:lastChanges'

          hash
        end
      end
    end
  end
end