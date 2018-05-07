module Pohoda
  module Parsers
    module SEET
      class RecordSendEETType
        include ParserCore::BaseParser
        include Ftr::Groups::GroupFilter1

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          mega.inject(hash) { |memo, r| memo.merge r }
        end
      end
    end
  end
end