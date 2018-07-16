module Pohoda
  module Builders
    module Pri
      class PrijemkaType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :prijemka_header
            root << Pri::PrijemkaHeaderType.new('pri:prijemkaHeader', data[:prijemka_header]).builder
          end
          if data.key? :prijemka_detail
            root << Pri::PrijemkaDetailType.new('pri:prijemkaDetail', data[:prijemka_detail]).builder
          end
          if data.key? :prijemka_summary
            root << Pri::PrijemkaSummaryType.new('pri:prijemkaSummary', data[:prijemka_summary]).builder
          end
          if data.key? :print
            element = Ox::Element.new('pri:print')
            data[:print].each { |i| element << Prn::PrinterSettingsType.new('prn:printerSettings', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end