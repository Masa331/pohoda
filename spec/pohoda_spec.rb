require 'spec_helper'

RSpec.describe Pohoda do
  describe '::parse' do
    context 'invoice with no data' do
      let(:raw) { File.open "./spec/fixtures/blank_invoice.xml" }
      subject(:invoice) { Pohoda.parse(raw) }

      it 'returns parsed DataPackType' do
        expect(subject).to be_a Pohoda::DataPackType
      end
    end
  end
end
