module Nokogiri
  module XML
    class Document
      def decorate node
      end
    end
  end
end

module Pohoda
  module BaseElement
    attr_accessor :xml

    def initialize(xml)
      @xml = xml
    end

    private

    def text_at(xpath)
      cached_ctx.evaluate(xpath, nil)&.first&.text
    end

    def at_xpath(locator)
      xpath(locator)&.first
    end

    def xpath(locator)
      if xml.is_a? Nokogiri::XML::NodeSet
        new_set = Nokogiri::XML::NodeSet.new(xml.document)

        cached_ctxs.each do |ctx|
          res = ctx.evaluate(locator, nil)

          new_set += res
        end

        new_set
      else
        cached_ctx.evaluate(locator, nil)
      end
    end

    def cached_ctx
      @ctx ||=
        begin
          Nokogiri::XML::XPathContext.new(xml)
        end
    end

    def cached_ctxs
      @ctxs ||=
        begin
          xml.map { |node| Nokogiri::XML::XPathContext.new(node) }
        end
    end
  end
end
