module Pohoda
  module BaseElement
    EMPTY_ARRAY = []

    attr_accessor :raw

    def initialize(raw)
      @raw = raw
    end

    private

    def at(locator)
      return nil if raw.nil?

      raw[locator]
    end

    def all(locator)
      return [] if raw.nil?

      result = raw[locator]

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
