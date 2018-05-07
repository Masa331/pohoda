require 'spec_helper'
require 'nokogiri'

RSpec.describe Pohoda::Builders::Inv::InvoiceType do
  describe '#to_xml' do
    context 'basic invoice' do
      it 'parsed and builded invoice are the same' do
        original_xml = Nokogiri::XML(File.read('spec/fixtures/complete_invoice.xml')).at_xpath('//inv:invoice')

        xml = File.read('./spec/fixtures/complete_invoice.xml')
        parsed = Pohoda.parse(xml)

        lines1 = xml.lines.sort
        lines2 = Pohoda.build(parsed.to_h_with_attrs, { encoding: 'UTF-8' }).lines.sort

        expect(lines1).to eq lines2
      end
    end
  end
end
