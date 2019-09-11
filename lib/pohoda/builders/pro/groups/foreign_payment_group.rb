module Pohoda
  module Builders
    module Pro
      module Groups
        module ForeignPaymentGroup
          def builder
            root = Ox::Element.new(name)
            root = add_attributes_and_namespaces(root)

            root << build_element('pro:rate', data[:rate], data[:rate_attributes]) if data.key? :rate
            root << build_element('pro:amount', data[:amount], data[:amount_attributes]) if data.key? :amount

            root
          end
        end
      end
    end
  end
end