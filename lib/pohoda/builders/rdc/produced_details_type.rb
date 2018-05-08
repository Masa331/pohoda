module Pohoda
  module Builders
    module Rdc
      class ProducedDetailsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('rdc:id', data[:id]) if data.key? :id
          root << build_element('rdc:number', data[:number]) if data.key? :number
          root << build_element('rdc:code', data[:code]) if data.key? :code
          root << build_element('rdc:actionType', data[:action_type]) if data.key? :action_type
          if data.key? :ext_id
            root << Typ::ExtIdType.new('rdc:extId', data[:ext_id]).builder
          end

          root
        end
      end
    end
  end
end