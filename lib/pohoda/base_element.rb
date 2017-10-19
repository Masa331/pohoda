module Pohoda
  module BaseElement
    attr_accessor :xml

    def initialize(xml)
      @xml = xml
      @xml ||= BlankXml.new
    end

    def t(xpath)
      xml.xpath(xpath).text
    end

    def e(xpath)
      xml.at_xpath(xpath)
    end
  end
end
