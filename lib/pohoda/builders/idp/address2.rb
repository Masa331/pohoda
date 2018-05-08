module Pohoda
  module Builders
    module Idp
      class Address2
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('idp:id', data[:id]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('idp:extId', data[:ext_id]).builder
          end

          root
        end
      end
    end
  end
end