module Pohoda
  module Builders
    module Grs
      class GroupStocksHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('grs:id', data[:id]) if data.key? :id
          root << build_element('grs:code', data[:code]) if data.key? :code
          root << build_element('grs:name', data[:name]) if data.key? :name
          root << build_element('grs:description', data[:description]) if data.key? :description
          root << build_element('grs:internet', data[:internet]) if data.key? :internet
          root << build_element('grs:picture', data[:picture]) if data.key? :picture
          root << build_element('grs:note', data[:note]) if data.key? :note
          root << build_element('grs:markRecord', data[:mark_record]) if data.key? :mark_record

          root
        end
      end
    end
  end
end