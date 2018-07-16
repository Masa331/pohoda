module Pohoda
  module Parsers
    module Rdc
      module Groups
        module MyGroupOfValue
          def x_path
            at 'rdc:XPath'
          end

          def x_path_attributes
            attributes_at 'rdc:XPath'
          end

          def value_requested
            at 'rdc:valueRequested'
          end

          def value_requested_attributes
            attributes_at 'rdc:valueRequested'
          end

          def value_produced
            at 'rdc:valueProduced'
          end

          def value_produced_attributes
            attributes_at 'rdc:valueProduced'
          end

          def to_h
            hash = {}
            hash[:attributes] = attributes

            hash[:x_path] = x_path if has? 'rdc:XPath'
            hash[:x_path_attributes] = x_path_attributes if has? 'rdc:XPath'
            hash[:value_requested] = value_requested if has? 'rdc:valueRequested'
            hash[:value_requested_attributes] = value_requested_attributes if has? 'rdc:valueRequested'
            hash[:value_produced] = value_produced if has? 'rdc:valueProduced'
            hash[:value_produced_attributes] = value_produced_attributes if has? 'rdc:valueProduced'

            hash
          end
        end
      end
    end
  end
end