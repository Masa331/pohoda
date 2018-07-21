module Pohoda
  module Parsers
    module Ftr
      class UserFilterNameType
        include ParserCore::BaseParser

        def user_filter_name
          at 'ftr:userFilterName'
        end

        def user_filter_name_attributes
          attributes_at 'ftr:userFilterName'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:user_filter_name] = user_filter_name if has? 'ftr:userFilterName'
          hash[:user_filter_name_attributes] = user_filter_name_attributes if has? 'ftr:userFilterName'

          hash
        end
      end
    end
  end
end