require 'ox'
require 'parser_core'

require 'pohoda/requires'

module Pohoda
  def self.parse(raw)
    parsed = Ox.load(raw, skip: :skip_none)

    if parsed.locate('dat:dataPack').any?
      Parsers::Dat::DataPackType.new(parsed.locate('dat:dataPack').first)
    elsif parsed.locate('rsp:responsePack').any?
      Parsers::Rsp::ResponsePackType.new(parsed.locate('rsp:responsePack').first)
    end
  end

  def self.build(data, options = {})
    Builders::Dat::DataPackType.new('dat:dataPack', data, options).to_xml
  end
end
