module Pohoda
  module Builders
    module MKasa
      class ModeCalendarType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('mKasa:january', data[:january], data[:january_attributes]) if data.key? :january
          root << build_element('mKasa:february', data[:february], data[:february_attributes]) if data.key? :february
          root << build_element('mKasa:march', data[:march], data[:march_attributes]) if data.key? :march
          root << build_element('mKasa:april', data[:april], data[:april_attributes]) if data.key? :april
          root << build_element('mKasa:may', data[:may], data[:may_attributes]) if data.key? :may
          root << build_element('mKasa:june', data[:june], data[:june_attributes]) if data.key? :june
          root << build_element('mKasa:july', data[:july], data[:july_attributes]) if data.key? :july
          root << build_element('mKasa:august', data[:august], data[:august_attributes]) if data.key? :august
          root << build_element('mKasa:september', data[:september], data[:september_attributes]) if data.key? :september
          root << build_element('mKasa:october', data[:october], data[:october_attributes]) if data.key? :october
          root << build_element('mKasa:november', data[:november], data[:november_attributes]) if data.key? :november
          root << build_element('mKasa:december', data[:december], data[:december_attributes]) if data.key? :december

          root
        end
      end
    end
  end
end