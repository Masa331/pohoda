module Pohoda
  module Builders
    module Prn
      class PDFType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('prn:fileName', data[:file_name], data[:file_name_attributes]) if data.key? :file_name

          root
        end
      end
    end
  end
end