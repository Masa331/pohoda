module Pohoda
  module Builders
    module Bnk
      class StatementNumberType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('bnk:statementNumber', data[:statement_number], data[:statement_number_attributes]) if data.key? :statement_number
          root << build_element('bnk:numberMovement', data[:number_movement], data[:number_movement_attributes]) if data.key? :number_movement

          root
        end
      end
    end
  end
end