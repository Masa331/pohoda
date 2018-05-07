require 'spec_helper'

RSpec.describe Pohoda do
  describe '::parse' do
    context 'file contains data pack' do
      it 'returns parsed DataPackType' do
        parsed = Pohoda.parse File.read("./spec/fixtures/blank_invoice.xml")

        expect(parsed).to be_a Pohoda::Parsers::Dat::DataPackType
      end
    end

    context 'file contains response pack' do
      it 'returns parsed ResponsePackType' do
        parsed = Pohoda.parse File.read("./spec/fixtures/response_pack.xml")

        expect(parsed).to be_a Pohoda::Parsers::Rsp::ResponsePackType
      end
    end
  end
end
