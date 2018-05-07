module Pohoda
  module Parsers
    module Rdc
      module Groups
        module MyGroupOfValue
          def x_path
            at 'rdc:XPath'
          end

          def value_requested
            at 'rdc:valueRequested'
          end

          def value_produced
            at 'rdc:valueProduced'
          end

          def to_h_with_attrs
            hash = ParserCore::HashWithAttributes.new({}, attributes)

            hash[:x_path] = x_path if has? 'rdc:XPath'
            hash[:value_requested] = value_requested if has? 'rdc:valueRequested'
            hash[:value_produced] = value_produced if has? 'rdc:valueProduced'

            hash
          end
        end
      end
    end
  end
end