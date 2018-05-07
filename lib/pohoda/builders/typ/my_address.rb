module Pohoda
  module Builders
    module Typ
      class MyAddress
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :address
            root << Typ::AddressInternetType.new('address', data[:address]).builder
          end
          if data.key? :establishment
            root << Typ::EstablishmentType.new('establishment', data[:establishment]).builder
          end

          root
        end
      end
    end
  end
end