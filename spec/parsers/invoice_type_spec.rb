require 'spec_helper'
require 'pohoda/invoice_type'

RSpec.describe Pohoda::DataPackType do
  let(:raw) { File.open "./spec/fixtures/blank_invoice.xml" }
  let(:xml) { Nokogiri::XML(raw).xpath('//inv:invoice') }

  subject { Pohoda::InvoiceType.new(xml) }

  context 'invoice with no data' do
    its(:links) { is_expected.to eq [] }
    its('invoice_header') { is_expected.to eq nil }

    its('invoice_detail') { is_expected.to eq nil }

    its('invoice_summary') { is_expected.to eq nil }

    it '#to_h' do
      expect(subject.to_h).to eq({})
    end
  end
end
