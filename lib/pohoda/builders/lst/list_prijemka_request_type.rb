module Pohoda
  module Builders
    module Lst
      class ListPrijemkaRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_prijemka
            root << Ftr::RequestPrijemkaType.new('requestPrijemka', data[:request_prijemka]).builder
          end

          root
        end
      end
    end
  end
end