module Pohoda
  module Builders
    module Int
      class IntDocType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :int_doc_header
            root << Int::IntDocHeaderType.new('intDocHeader', data[:int_doc_header]).builder
          end
          if data.key? :int_doc_detail
            root << Int::IntDocDetailType.new('intDocDetail', data[:int_doc_detail]).builder
          end
          if data.key? :int_doc_summary
            root << Int::IntDocSummaryType.new('intDocSummary', data[:int_doc_summary]).builder
          end
          if data.key? :print
            root << Prn::AgendaPrintType.new('print', data[:print]).builder
          end

          root
        end
      end
    end
  end
end