module Pohoda
  module Builders
    module Lst
      class ListAccountancyRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_accountancy
            root << Ftr::RequestAccountancyType.new('requestAccountancy', data[:request_accountancy]).builder
          end

          root
        end
      end
    end
  end
end