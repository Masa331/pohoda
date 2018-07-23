module Pohoda
  module Builders
    module Pre
      class PrevodkaType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :prevodka_header
            root << Pre::PrevodkaHeaderType.new('pre:prevodkaHeader', data[:prevodka_header]).builder
          end
          if data.key? :prevodka_detail
            element = Ox::Element.new('pre:prevodkaDetail')
            data[:prevodka_detail].each { |i| element << Pre::PrevodkaItemType.new('pre:prevodkaItem', i).builder }
            root << element
          end
          if data.key? :print
            element = Ox::Element.new('pre:print')
            data[:print].each { |i| element << Prn::PrinterSettingsType.new('prn:printerSettings', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end