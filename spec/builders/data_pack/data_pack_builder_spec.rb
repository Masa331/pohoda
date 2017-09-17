require 'spec_helper'

RSpec.describe Pohoda::Builder::DataPack do
  context 'data pack with no items' do
    describe '#to_xml' do
      it 'retuns xml string' do
        builder = Pohoda::Builder::DataPack.new
        expected_output = File.read('spec/builders/data_pack/empty_data_pack.xml')

        expect(builder.to_xml).to eq expected_output
      end

      it "returned string is valid against data pack XSD(minus it's emptiness :D)" do
        builder = Pohoda::Builder::DataPack.new
        expected_output = File.read('spec/builders/data_pack/empty_data_pack.xml')

        raw_schema = File.read('spec/fixtures/pohoda_xsd/data-package.xsd')
        schema = Nokogiri::XML::Schema(raw_schema)

        errors = schema.validate(builder.builder.doc)
        errors.each { |e| puts e }

        expected_messages = ["ERROR: Element '{http://www.stormware.cz/schema/version_2/data.xsd}dataPack': Missing child element(s). Expected is one of ( {http://www.stormware.cz/schema/version_2/data.xsd}transformation, {http://www.stormware.cz/schema/version_2/data.xsd}dataPackItem )."]
        expect(errors.map(&:message)).to eq expected_messages
      end
    end
  end

  context 'data pack with items' do
    it 'retuns xml string' do
      attributes = { data_pack_items: [{ invoice: { invoice_type: 'issuedInvoice' } }] }
      builder = Pohoda::Builder::DataPack.new attributes
      expected_output = File.read('spec/builders/data_pack/data_pack.xml')

      expect(builder.to_xml.gsub(/\s+/, '')).to eq expected_output.gsub(/\s+/, '')
    end
  end
end
