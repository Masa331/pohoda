module Pohoda
  module Builders
    module Rdc
      module Groups
        module MyGroupOfValue
          def builder
            root = Ox::Element.new(name)
            if data.respond_to? :attributes
              data.attributes.each { |k, v| root[k] = v }
            end

            root << build_element('rdc:XPath', data[:x_path], data[:x_path_attributes]) if data.key? :x_path
            root << build_element('rdc:valueRequested', data[:value_requested], data[:value_requested_attributes]) if data.key? :value_requested
            root << build_element('rdc:valueProduced', data[:value_produced], data[:value_produced_attributes]) if data.key? :value_produced

            root
          end
        end
      end
    end
  end
end