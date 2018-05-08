module Pohoda
  module Builders
    module Ftr
      module Groups
        module DeleteFilter
          def builder
            root = Ox::Element.new(name)
            if data.respond_to? :attributes
              data.attributes.each { |k, v| root[k] = v }
            end

            if data.key? :filter
              root << Ftr::FilterDocsDeleteType.new('ftr:filter', data[:filter]).builder
            end

            root
          end
        end
      end
    end
  end
end