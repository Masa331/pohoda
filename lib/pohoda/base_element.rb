module Pohoda
  module BaseElement
    EMPTY_ARRAY = []

    attr_accessor :xml

    def initialize(xml)
      @xml = xml
    end

    private

    def at(locator)
      xml[locator]
    end

    def all(locator)
      result = xml[locator]

      if result.is_a? Hash
        [result]
      elsif result.is_a? Array
        result
      else
        EMPTY_ARRAY
      end
    end
  end
end
