module Pohoda
  module Builders
    module Vyd
      class VydejkaType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :links
            element = Ox::Element.new('vyd:links')
            data[:links].each { |i| element << Typ::LinkElemetType.new('typ:link', i).builder }
            root << element
          end
          if data.key? :vydejka_header
            root << Vyd::VydejkaHeaderType.new('vyd:vydejkaHeader', data[:vydejka_header]).builder
          end
          if data.key? :vydejka_detail
            element = Ox::Element.new('vyd:vydejkaDetail')
            data[:vydejka_detail].each { |i| element << Vyd::VydejkaItemType.new('vyd:vydejkaItem', i).builder }
            root << element
          end
          if data.key? :vydejka_summary
            root << Vyd::VydejkaSummaryType.new('vyd:vydejkaSummary', data[:vydejka_summary]).builder
          end
          if data.key? :print
            element = Ox::Element.new('vyd:print')
            data[:print].each { |i| element << Prn::PrinterSettingsType.new('prn:printerSettings', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end