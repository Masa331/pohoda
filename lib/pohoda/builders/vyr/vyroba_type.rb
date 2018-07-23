module Pohoda
  module Builders
    module Vyr
      class VyrobaType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :vyroba_header
            root << Vyr::VyrobaHeaderType.new('vyr:vyrobaHeader', data[:vyroba_header]).builder
          end
          if data.key? :vyroba_detail
            element = Ox::Element.new('vyr:vyrobaDetail')
            data[:vyroba_detail].each { |i| element << Vyr::VyrobaItemType.new('vyr:vyrobaItem', i).builder }
            root << element
          end
          if data.key? :print
            element = Ox::Element.new('vyr:print')
            data[:print].each { |i| element << Prn::PrinterSettingsType.new('prn:printerSettings', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end