module Pohoda
  module Parsers
    module Ftr
      class RequestVyrobaType
        include ParserCore::BaseParser
        include Ftr::Groups::GroupFilter1

        def to_h
          hash = {}
          hash[:attributes] = attributes

          mega.inject(hash) { |memo, r| memo.merge r }
        end
      end
    end
  end
end