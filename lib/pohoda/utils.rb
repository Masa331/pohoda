module Pohoda
  module Utils
    def t(xpath)
      xml.xpath(xpath).text
    end

    def e(xpath)
      xml.at_xpath(xpath)
    end
  end
end
