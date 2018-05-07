module Pohoda
  module Parsers
    module Typ
      class CompanyType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'typ:id'

          hash
        end
      end
    end
  end
end