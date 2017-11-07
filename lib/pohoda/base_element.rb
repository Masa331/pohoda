module Pohoda
  module BaseElement
    attr_accessor :xml

    def initialize(xml)
      @xml = xml
      @xml ||= BlankXml.new
    end

    private

    def text(xpath)
      xml.xpath(xpath).text
    end
    alias_method :t, :text

    def element(xpath)
      xml.at_xpath(xpath)
    end
    alias_method :e, :element
  end
end
