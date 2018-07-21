module Pohoda
  module Parsers
    module Ipm
      class IntParamDetailType
        include ParserCore::BaseParser

        def int_param
          submodel_at(Ipm::IntParamType, 'ipm:intParam')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:int_param] = int_param.to_h if has? 'ipm:intParam'

          hash
        end
      end
    end
  end
end