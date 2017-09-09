require 'spec_helper'

RSpec.describe Pohoda::Builder::PartnerIdentity do
  describe '#to_xml' do
    context 'blank partner identity' do
      let(:builder) { Pohoda::Builder::PartnerIdentity.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/partner_identity/blank_partner_identity.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'partner identity' do
      let(:attributes) do
        { id: 1,
          ext_id: { ids: '1' },
          address: { name: 'Premysl Donat' },
          ship_to_address: { street: 'Sunny Boulevard' }
        }
      end

      let(:builder) do
        Pohoda::Builder::PartnerIdentity.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/partner_identity/partner_identity.xml')

        expect(builder.to_xml.gsub(/\s+/, '')).to eq expected_output.gsub(/\s+/, '')
      end
    end
  end
end
