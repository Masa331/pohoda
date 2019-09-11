module Pohoda
  module Parsers
    module Pro
      module Groups
        module ForeignPaymentGroup
          def rate
            at 'pro:rate'
          end

          def rate_attributes
            attributes_at 'pro:rate'
          end

          def amount
            at 'pro:amount'
          end

          def amount_attributes
            attributes_at 'pro:amount'
          end

          def to_h
            hash = {}
            hash[:attributes] = attributes

            hash[:rate] = rate if has? 'pro:rate'
            hash[:rate_attributes] = rate_attributes if has? 'pro:rate'
            hash[:amount] = amount if has? 'pro:amount'
            hash[:amount_attributes] = amount_attributes if has? 'pro:amount'

            hash
          end
        end
      end
    end
  end
end