module Pohoda
  module Builders
    module Typ
      class ResponsiblePersonType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:id', data[:id]) if data.key? :id
          root << build_element('typ:surname', data[:surname]) if data.key? :surname
          root << build_element('typ:name', data[:name]) if data.key? :name
          root << build_element('typ:degree', data[:degree]) if data.key? :degree

          root
        end
      end
    end
  end
end