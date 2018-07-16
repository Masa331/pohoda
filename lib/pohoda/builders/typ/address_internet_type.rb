module Pohoda
  module Builders
    module Typ
      class AddressInternetType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:company', data[:company], data[:company_attributes]) if data.key? :company
          root << build_element('typ:title', data[:title], data[:title_attributes]) if data.key? :title
          root << build_element('typ:surname', data[:surname], data[:surname_attributes]) if data.key? :surname
          root << build_element('typ:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('typ:city', data[:city], data[:city_attributes]) if data.key? :city
          root << build_element('typ:street', data[:street], data[:street_attributes]) if data.key? :street
          root << build_element('typ:number', data[:number], data[:number_attributes]) if data.key? :number
          root << build_element('typ:zip', data[:zip], data[:zip_attributes]) if data.key? :zip
          root << build_element('typ:ico', data[:ico], data[:ico_attributes]) if data.key? :ico
          root << build_element('typ:dic', data[:dic], data[:dic_attributes]) if data.key? :dic
          root << build_element('typ:icDph', data[:ic_dph], data[:ic_dph_attributes]) if data.key? :ic_dph
          root << build_element('typ:phone', data[:phone], data[:phone_attributes]) if data.key? :phone
          root << build_element('typ:mobilPhone', data[:mobil_phone], data[:mobil_phone_attributes]) if data.key? :mobil_phone
          root << build_element('typ:fax', data[:fax], data[:fax_attributes]) if data.key? :fax
          root << build_element('typ:email', data[:email], data[:email_attributes]) if data.key? :email
          root << build_element('typ:www', data[:www], data[:www_attributes]) if data.key? :www

          root
        end
      end
    end
  end
end