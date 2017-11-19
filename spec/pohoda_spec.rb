require 'spec_helper'

RSpec.describe Pohoda do
  describe '::parse' do
    context 'file contains data pack' do
      let(:raw) { File.open "./spec/fixtures/blank_invoice.xml" }
      subject(:invoice) { Pohoda.parse(raw) }

      it 'returns parsed DataPackType' do
        expect(subject).to be_a Pohoda::DataPackType
      end
    end

    context 'file contains response pack' do
      let(:raw) { File.open "./spec/fixtures/response_pack.xml" }
      subject(:invoice) { Pohoda.parse(raw) }

      it 'returns parsed ResponsePackType' do
        expect(subject).to be_a Pohoda::ResponsePackType
      end
    end
  end
end
