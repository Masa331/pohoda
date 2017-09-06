require 'spec_helper'

RSpec.describe Pohoda::Invoice do
  context 'basic invoice' do
    let(:xml) { xml_invoice('basic_invoice.xml') }
    let(:i) { Pohoda::Invoice.new(xml) }

    it '#invoice_type' do
      expect(i.invoice_type).to eq 'issuedInvoice'
    end

    context '#number' do
      it '#number_requested' do
        expect(i.number.number_requested).to eq '2016001938'
      end
    end

    it '#number_order' do
      expect(i.number_order).to eq '2016001748'
    end

    it '#sym_var' do
      expect(i.sym_var).to eq '2016001938'
    end

    it '#date' do
      expect(i.date).to eq '2016-10-17'
    end

    it '#date_tax' do
      expect(i.date_tax).to eq '2016-10-17'
    end

    it '#date_due' do
      expect(i.date_due).to eq '2016-10-31'
    end

    context '#partner_identity' do
      context '#address' do
        it '#company' do
          expect(i.partner_identity.address.company).to eq ''
        end

        it '#name' do
          expect(i.partner_identity.address.name).to eq 'John Doe'
        end

        it '#city' do
          expect(i.partner_identity.address.city).to eq 'Písečná'
        end

        it '#street' do
          expect(i.partner_identity.address.street).to eq 'Studený Zejf 7'
        end

        it '#zip' do
          expect(i.partner_identity.address.zip).to eq '79082'
        end

        context '#country' do
          it '#ids' do
            expect(i.partner_identity.address.country.ids).to eq 'CZE'
          end
        end

        it '#ico' do
          expect(i.partner_identity.address.ico).to eq ''
        end

        it '#dic' do
          expect(i.partner_identity.address.dic).to eq ''
        end
      end
    end

    context '#items' do
      it 'items size' do
        expect(i.items.size).to eq 2
      end

      context 'first_item' do
        it '#text' do
          expect(i.items.first.text).to eq 'Perla přání'
        end

        it '#quantity' do
          expect(i.items.first.quantity).to eq '3'
        end

        it '#unit' do
          expect(i.items.first.unit).to eq 'ks'
        end

        it '#pay_vat' do
          expect(i.items.first.pay_vat).to eq 'false'
        end

        it '#rate_vat' do
          expect(i.items.first.rate_vat).to eq 'high'
        end

        it '#code' do
          expect(i.items.first.code).to eq '83'
        end

        context '#home_currency' do
          it '#unit_price' do
            expect(i.items.first.home_currency.unit_price).to eq '164.46'
          end

          it '#price' do
            expect(i.items.first.home_currency.price).to eq '493.39'
          end

          it '#price_vat' do
            expect(i.items.first.home_currency.price_vat).to eq '103.61'
          end
        end

        context '#stock_item' do
          context '#store' do
            it '#ids' do
              expect(i.items.first.stock_item.store.ids).to eq 'Sklad'
            end
          end

          context '#stock_item' do
            it '#ids' do
              expect(i.items.first.stock_item.stock_item.ids).to eq '83'
            end
          end
        end
      end

      context 'second_item' do
        it '#text' do
          expect(i.items.last.text).to eq 'Česká pošta - Balík do ruky'
        end

        it '#quantity' do
          expect(i.items.last.quantity).to eq '1'
        end

        it '#unit' do
          expect(i.items.last.unit).to eq ''
        end

        it '#pay_vat' do
          expect(i.items.last.pay_vat).to eq 'false'
        end

        it '#rate_vat' do
          expect(i.items.last.rate_vat).to eq 'high'
        end

        context '#home_currency' do
          it '#unit_price' do
            expect(i.items.last.home_currency.unit_price).to eq '0'
          end

          it '#price' do
            expect(i.items.last.home_currency.price).to eq '0'
          end

          it '#price_vat' do
            expect(i.items.last.home_currency.price_vat).to eq '0'
          end
        end
      end
    end

    it '#rounding_document' do
      expect(i.rounding_document).to eq 'math2one'
    end

    context '#home_currency' do
      it '#price_high_sum' do
        expect(i.home_currency.price_high_sum).to eq '715'
      end

      context '#round' do
        it '#price_round' do
          expect(i.home_currency.round.price_round).to eq '0'
        end
      end
    end
  end
end
