module Pohoda
  module Builders
    module Int
      class IntDocType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :int_doc_header
            root << Int::IntDocHeaderType.new('int:intDocHeader', data[:int_doc_header]).builder
          end
          if data.key? :int_doc_detail
            element = Ox::Element.new('int:intDocDetail')
            data[:int_doc_detail].each { |i| element << Int::IntDocItemType.new('int:intDocItem', i).builder }
            root << element
          end
          if data.key? :int_doc_summary
            root << Int::IntDocSummaryType.new('int:intDocSummary', data[:int_doc_summary]).builder
          end
          if data.key? :print
            element = Ox::Element.new('int:print')
            data[:print].each { |i| element << Prn::PrinterSettingsType.new('prn:printerSettings', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end