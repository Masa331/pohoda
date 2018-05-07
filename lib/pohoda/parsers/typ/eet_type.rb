module Pohoda
  module Parsers
    module Typ
      class EETType
        include ParserCore::BaseParser

        def state_eet
          at 'typ:stateEET'
        end

        def detail_eet
          array_of_at(Typ::DetailEETType, ['typ:detailEET'])
        end

        def profile
          submodel_at(Typ::RefType, 'typ:profile')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:state_eet] = state_eet if has? 'typ:stateEET'
          hash[:detail_eet] = detail_eet.map(&:to_h_with_attrs) if has? 'typ:detailEET'
          hash[:profile] = profile.to_h_with_attrs if has? 'typ:profile'

          hash
        end
      end
    end
  end
end