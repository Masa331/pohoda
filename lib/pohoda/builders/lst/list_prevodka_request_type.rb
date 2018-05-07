module Pohoda
  module Builders
    module Lst
      class ListPrevodkaRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_prevodka
            root << Ftr::RequestPrevodkaType.new('lst:requestPrevodka', data[:request_prevodka]).builder
          end

          root
        end
      end
    end
  end
end