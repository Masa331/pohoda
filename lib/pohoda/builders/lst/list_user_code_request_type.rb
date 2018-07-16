module Pohoda
  module Builders
    module Lst
      class ListUserCodeRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('lst:requestUserCode', data[:request_user_code], data[:request_user_code_attributes]) if data.key? :request_user_code

          root
        end
      end
    end
  end
end