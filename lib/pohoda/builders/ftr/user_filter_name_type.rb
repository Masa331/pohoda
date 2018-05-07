module Pohoda
  module Builders
    module Ftr
      class UserFilterNameType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('ftr:userFilterName', data[:user_filter_name]) if data.key? :user_filter_name

          root
        end
      end
    end
  end
end