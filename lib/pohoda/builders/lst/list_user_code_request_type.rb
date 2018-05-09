module Pohoda
  module Builders
    module Lst
      class ListUserCodeRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('lst:requestUserCode', data[:request_user_code]) if data.key? :request_user_code

          root
        end
      end
    end
  end
end