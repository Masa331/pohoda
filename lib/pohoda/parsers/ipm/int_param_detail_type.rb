module Pohoda
  module Parsers
    module Ipm
      class IntParamDetailType
        include ParserCore::BaseParser

        def int_param
          submodel_at(Ipm::IntParamType, 'ipm:intParam')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:int_param] = int_param.to_h_with_attrs if has? 'ipm:intParam'

          hash
        end
      end
    end
  end
end