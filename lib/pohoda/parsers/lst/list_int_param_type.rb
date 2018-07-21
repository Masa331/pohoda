module Pohoda
  module Parsers
    module Lst
      class ListIntParamType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def int_param_detail
          array_of_at(Ipm::IntParamDetailType, ['lst:intParamDetail'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:int_param_detail] = int_param_detail.map(&:to_h) if has? 'lst:intParamDetail'

          hash
          super.merge(hash)
        end
      end
    end
  end
end