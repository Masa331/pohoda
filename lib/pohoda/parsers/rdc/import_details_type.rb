module Pohoda
  module Parsers
    module Rdc
      class ImportDetailsType
        include ParserCore::BaseParser

        def detail
          array_of_at(Rdc::DetailType, ['rdc:detail'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:detail] = detail.map(&:to_h) if has? 'rdc:detail'

          hash
        end
      end
    end
  end
end