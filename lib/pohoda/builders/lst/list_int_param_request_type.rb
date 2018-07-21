module Pohoda
  module Builders
    module Lst
      class ListIntParamRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('lst:requestIntParam', data[:request_int_param], data[:request_int_param_attributes]) if data.key? :request_int_param

          root
        end
      end
    end
  end
end