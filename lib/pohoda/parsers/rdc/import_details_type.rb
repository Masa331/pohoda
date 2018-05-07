module Pohoda
  module Parsers
    module Rdc
      class ImportDetailsType
        include ParserCore::BaseParser

        def detail
          array_of_at(Rdc::DetailType, ['rdc:detail'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:detail] = detail.map(&:to_h_with_attrs) if has? 'rdc:detail'

          hash
        end
      end
    end
  end
end