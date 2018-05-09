require 'spec_helper'

RSpec.describe Pohoda::Builders::Typ::ShipToAddressType do
  describe '#to_xml' do
    context 'ship to address' do
      it 'retuns xml string' do
        builder = Pohoda::Builders::Typ::ShipToAddressType.new('shipToAddress', { id: '1', country: { ids: 'CZ' } })

        expect(builder.to_xml.gsub(/\s+/, '')).to eq(
          <<~XML
<?xml version="1.0"?>
<shipToAddress>
  <typ:id>1</typ:id>
  <typ:country>
    <typ:ids>CZ</typ:ids>
  </typ:country>
</shipToAddress>
          XML
         .gsub(/\s+/, ''))
      end
    end
  end
end
