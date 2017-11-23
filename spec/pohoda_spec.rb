require 'spec_helper'

RSpec.describe Pohoda do
  describe '::parse' do
    context 'file contains data pack' do
      it 'returns parsed DataPackType' do
        raw = File.read "./spec/fixtures/blank_invoice.xml"
        parsed = Pohoda.parse raw

        expect(parsed).to be_a Pohoda::DataPackType
      end
    end

    context 'file contains response pack' do
      it 'returns parsed ResponsePackType' do
        raw = File.read "./spec/fixtures/response_pack.xml"
        parsed = Pohoda.parse raw

        expect(parsed).to be_a Pohoda::ResponsePackType
      end
    end
  end
end
