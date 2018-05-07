module Pohoda
  module Parsers
    module Ftr
      class SelectedCompanysType
        include ParserCore::BaseParser

        def company
          array_of_at(Typ::StringCompany, ['ftr:company'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:company] = company.map(&:to_h_with_attrs) if has? 'ftr:company'

          hash
        end
      end
    end
  end
end