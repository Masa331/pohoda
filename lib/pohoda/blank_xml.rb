module Pohoda
  class BlankXml
    def xpath(*_)
      self.class.new
    end

    def at_xpath(*_)
      self.class.new
    end

    def text
      ''
    end
  end
end
