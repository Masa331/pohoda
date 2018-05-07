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

# rm lib/pohoda/parsers/* -rf; cp ~/pracovni/imagine/dame_data/pohoda_xsd/tmp/parsers/ lib/pohoda/parsers/ -r; rm lib/pohoda/builders/* -rf; cp ~/pracovni/imagine/dame_data/pohoda_xsd/tmp/builders/* lib/pohoda/builders/ -r; cp ~/pracovni/imagine/dame_data/pohoda_xsd/tmp/requires.rb lib/pohoda/
#
#
#
# rm lib/pohoda/parsers -rf; rm lib/pohoda/builders -rf; cp ~/code/xml/pohoda_xsd/tmp/* lib/pohoda/ -r
