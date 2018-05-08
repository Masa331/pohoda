module Pohoda
  module Builders
    module Pro
      class ProdejkaType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :prodejka_header
            root << Pro::ProdejkaHeaderType.new('pro:prodejkaHeader', data[:prodejka_header]).builder
          end
          if data.key? :prodejka_detail
            element = Ox::Element.new('pro:prodejkaDetail')
            data[:prodejka_detail].each { |i| element << Pro::ProdejkaItemType.new('pro:prodejkaItem', i).builder }
            root << element
          end
          if data.key? :prodejka_summary
            root << Pro::ProdejkaSummaryType.new('pro:prodejkaSummary', data[:prodejka_summary]).builder
          end
          if data.key? :eet
            root << Typ::EETType.new('pro:EET', data[:eet]).builder
          end
          if data.key? :print
            element = Ox::Element.new('pro:print')
            data[:print].each { |i| element << Prn::PrinterSettingsType.new('prn:printerSettings', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end