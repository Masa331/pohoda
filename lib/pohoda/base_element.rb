module Pohoda
  module BaseElement
    include Pohoda::Utils

    attr_accessor :xml

    def initialize(xml)
      @xml = xml
      @xml ||= BlankXml.new
    end
  end
end
