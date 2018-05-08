require 'spec_helper'

RSpec.describe Pohoda::Builders::Typ::Address do
  describe '#to_xml' do
    context 'blank partner identity' do
      it 'retuns xml string' do
        builder = Pohoda::Builders::Typ::Address.new('address')
        expected_output = File.read('spec/builders/address/blank_address.xml')

        expect(builder.to_xml).to eq(
          <<~XML
            <?xml version="1.0"?>
            <address/>
          XML
        )
      end
    end

    context 'partner identity' do
      let(:attributes) do
        { id: '1',
          ext_id: [{ ids: '1' }],
          address: { name: 'Premysl Donat' },
          ship_to_address: [{ street: 'Sunny Boulevard' }]
        }
      end

      it 'retuns xml string' do
        builder = Pohoda::Builders::Typ::Address.new('address', attributes)

        expect(builder.to_xml.gsub(/\s+/, '')).to eq(
          <<~XML
<?xml version="1.0"?>
<address>
  <typ:id>1</typ:id>
  <typ:extId>
    <typ:ids>1</typ:ids>
  </typ:extId>
  <typ:address>
    <typ:name>Premysl Donat</typ:name>
  </typ:address>
  <typ:shipToAddress>
    <typ:street>Sunny Boulevard</typ:street>
  </typ:shipToAddress>
</address>
          XML
        .gsub(/\s+/, ''))
      end
    end
  end
end
