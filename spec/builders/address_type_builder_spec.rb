require 'spec_helper'

RSpec.describe Pohoda::Builders::Typ::AddressType do
  describe '#to_xml' do
    context 'address' do
      let(:attributes) do
        { company: 'Best Company inc.',
          country: { ids: 'CZ' }
        }
      end

      it 'retuns xml string' do
        builder = Pohoda::Builders::Typ::AddressType.new('address', attributes)

        expect(builder.to_xml.gsub(/\s+/, '')).to eq(
          <<~XML
            <?xml version="1.0"?>
            <address>
              <typ:company>Best Company inc.</typ:company>
              <typ:country>
                <typ:ids>CZ</typ:ids>
              </typ:country>
            </address>
          XML
          .gsub(/\s+/, ''))
      end
    end
  end
end
