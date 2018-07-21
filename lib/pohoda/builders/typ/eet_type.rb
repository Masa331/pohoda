module Pohoda
  module Builders
    module Typ
      class EETType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('typ:stateEET', data[:state_eet], data[:state_eet_attributes]) if data.key? :state_eet
          if data.key? :detail_eet
            data[:detail_eet].each { |i| root << Typ::DetailEETType.new('typ:detailEET', i).builder }
          end
          if data.key? :profile
            root << Typ::RefType.new('typ:profile', data[:profile]).builder
          end

          root
        end
      end
    end
  end
end