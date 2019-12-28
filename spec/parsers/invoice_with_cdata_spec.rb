require 'spec_helper'

RSpec.describe Pohoda::Parsers::Inv::InvoiceType do
  let(:raw) { File.read "./spec/fixtures/invoice_with_cdata.xml" }
  let(:xml) { Pohoda.parse(raw) }

  subject { xml.data_pack_item.first.invoice }

  context 'invoice with CDATA texts' do
    its('invoice_header.text') { is_expected.to eq 'Faktura za zboží s adresou bez vazby na Adresář' }
  end
end
