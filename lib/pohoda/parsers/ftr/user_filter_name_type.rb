module Pohoda
  module Parsers
    module Ftr
      class UserFilterNameType
        include ParserCore::BaseParser

        def user_filter_name
          at 'ftr:userFilterName'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:user_filter_name] = user_filter_name if has? 'ftr:userFilterName'

          hash
        end
      end
    end
  end
end