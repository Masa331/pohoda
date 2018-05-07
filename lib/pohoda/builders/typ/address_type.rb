module Pohoda
  module Builders
    module Typ
      class AddressType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:company', data[:company]) if data.key? :company
          root << build_element('typ:division', data[:division]) if data.key? :division
          root << build_element('typ:name', data[:name]) if data.key? :name
          root << build_element('typ:city', data[:city]) if data.key? :city
          root << build_element('typ:street', data[:street]) if data.key? :street
          root << build_element('typ:zip', data[:zip]) if data.key? :zip
          root << build_element('typ:ico', data[:ico]) if data.key? :ico
          root << build_element('typ:dic', data[:dic]) if data.key? :dic
          root << build_element('typ:VATPayerType', data[:vat_payer_type]) if data.key? :vat_payer_type
          root << build_element('typ:icDph', data[:ic_dph]) if data.key? :ic_dph
          if data.key? :country
            root << Typ::RefType.new('typ:country', data[:country]).builder
          end
          root << build_element('typ:phone', data[:phone]) if data.key? :phone
          root << build_element('typ:mobilPhone', data[:mobil_phone]) if data.key? :mobil_phone
          root << build_element('typ:fax', data[:fax]) if data.key? :fax
          root << build_element('typ:email', data[:email]) if data.key? :email

          root
        end
      end
    end
  end
end