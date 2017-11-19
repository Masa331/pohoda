module Pohoda
  module BaseElement
    attr_accessor :xml

    def initialize(xml)
      @xml = xml
    end

    private

    def text_at(xpath)
      ctx = Nokogiri::XML::XPathContext.new(xml)
      ctx.evaluate(xpath, nil)&.first&.text
    end

    def at_xpath(locator)
      result =
        if xml.is_a? Nokogiri::XML::NodeSet
          xml.inject(Nokogiri::XML::NodeSet.new(xml.document)) do |set, node|
            ctx = Nokogiri::XML::XPathContext.new(node)
            res = ctx.evaluate(locator, nil)

            set + res
          end
        else
          ctx = Nokogiri::XML::XPathContext.new(xml)
          ctx.evaluate(locator, nil)
        end

      result&.first
    end

    def xpath(locator)
      if xml.is_a? Nokogiri::XML::NodeSet
        xml.inject(Nokogiri::XML::NodeSet.new(xml.document)) do |set, node|
          ctx = Nokogiri::XML::XPathContext.new(node)
          res = ctx.evaluate(locator, nil)

          set + res
        end
      else
        ctx = Nokogiri::XML::XPathContext.new(xml)
        ctx.evaluate(locator, nil)
      end
    end
  end
end
