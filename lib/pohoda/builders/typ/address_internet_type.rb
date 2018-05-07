module Pohoda
  module Builders
    module Typ
      class AddressInternetType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:company', data[:company]) if data.key? :company
          root << build_element('typ:title', data[:title]) if data.key? :title
          root << build_element('typ:surname', data[:surname]) if data.key? :surname
          root << build_element('typ:name', data[:name]) if data.key? :name
          root << build_element('typ:city', data[:city]) if data.key? :city
          root << build_element('typ:street', data[:street]) if data.key? :street
          root << build_element('typ:number', data[:number]) if data.key? :number
          root << build_element('typ:zip', data[:zip]) if data.key? :zip
          root << build_element('typ:ico', data[:ico]) if data.key? :ico
          root << build_element('typ:dic', data[:dic]) if data.key? :dic
          root << build_element('typ:icDph', data[:ic_dph]) if data.key? :ic_dph
          root << build_element('typ:phone', data[:phone]) if data.key? :phone
          root << build_element('typ:mobilPhone', data[:mobil_phone]) if data.key? :mobil_phone
          root << build_element('typ:fax', data[:fax]) if data.key? :fax
          root << build_element('typ:email', data[:email]) if data.key? :email
          root << build_element('typ:www', data[:www]) if data.key? :www

          root
        end
      end
    end
  end
end