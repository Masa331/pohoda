module Pohoda
  module Parsers
    module Typ
      class EETType
        include ParserCore::BaseParser

        def state_eet
          at 'typ:stateEET'
        end

        def state_eet_attributes
          attributes_at 'typ:stateEET'
        end

        def detail_eet
          array_of_at(Typ::DetailEETType, ['typ:detailEET'])
        end

        def profile
          submodel_at(Typ::RefType, 'typ:profile')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:state_eet] = state_eet if has? 'typ:stateEET'
          hash[:state_eet_attributes] = state_eet_attributes if has? 'typ:stateEET'
          hash[:detail_eet] = detail_eet.map(&:to_h) if has? 'typ:detailEET'
          hash[:profile] = profile.to_h if has? 'typ:profile'

          hash
        end
      end
    end
  end
end