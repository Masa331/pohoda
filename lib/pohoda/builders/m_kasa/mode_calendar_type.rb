module Pohoda
  module Builders
    module MKasa
      class ModeCalendarType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('mKasa:january', data[:january]) if data.key? :january
          root << build_element('mKasa:february', data[:february]) if data.key? :february
          root << build_element('mKasa:march', data[:march]) if data.key? :march
          root << build_element('mKasa:april', data[:april]) if data.key? :april
          root << build_element('mKasa:may', data[:may]) if data.key? :may
          root << build_element('mKasa:june', data[:june]) if data.key? :june
          root << build_element('mKasa:july', data[:july]) if data.key? :july
          root << build_element('mKasa:august', data[:august]) if data.key? :august
          root << build_element('mKasa:september', data[:september]) if data.key? :september
          root << build_element('mKasa:october', data[:october]) if data.key? :october
          root << build_element('mKasa:november', data[:november]) if data.key? :november
          root << build_element('mKasa:december', data[:december]) if data.key? :december

          root
        end
      end
    end
  end
end