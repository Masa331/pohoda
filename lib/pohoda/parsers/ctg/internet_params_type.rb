module Pohoda
  module Parsers
    module Ctg
      class InternetParamsType
        include ParserCore::BaseParser

        def id_internet_params
          at 'ctg:idInternetParams'
        end

        def id_internet_params_attributes
          attributes_at 'ctg:idInternetParams'
        end

        def int_parameter
          array_of_at(Typ::RefTypeLong, ['ctg:intParameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id_internet_params] = id_internet_params if has? 'ctg:idInternetParams'
          hash[:id_internet_params_attributes] = id_internet_params_attributes if has? 'ctg:idInternetParams'
          hash[:int_parameter] = int_parameter.map(&:to_h) if has? 'ctg:intParameter'

          hash
        end
      end
    end
  end
end