module Pohoda
  module Builders
    module MKasa
      class KasaEstablishmentType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('mKasa:company', data[:company]) if data.key? :company
          root << build_element('mKasa:city', data[:city]) if data.key? :city
          root << build_element('mKasa:street', data[:street]) if data.key? :street
          root << build_element('mKasa:zip', data[:zip]) if data.key? :zip
          root << build_element('mKasa:phone', data[:phone]) if data.key? :phone
          root << build_element('mKasa:mobilPhone', data[:mobil_phone]) if data.key? :mobil_phone
          root << build_element('mKasa:fax', data[:fax]) if data.key? :fax
          root << build_element('mKasa:email', data[:email]) if data.key? :email

          root
        end
      end
    end
  end
end