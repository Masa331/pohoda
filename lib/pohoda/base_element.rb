module Pohoda
  module BaseElement
    attr_accessor :xml

    def initialize(xml)
      @xml = xml
    end

    private

    def text_at(xpath)
      xml.xpath(xpath)&.text
    end

    def at_xpath(xpath)
      xml.at_xpath(xpath)
    end

    def xpath(xpath)
      xml.xpath(xpath)
    end
  end
end
