require 'nokogiri'

require "pohoda/version"
require "pohoda/base_element"
require "pohoda/invoice_type"
require "pohoda/type_currency_home"
require "pohoda/type_currency_foreign"
require "pohoda/number"
require "pohoda/payment_type"
require "pohoda/payment_account"
require "pohoda/accounting"
require "pohoda/classification_vat_type"
require "pohoda/type_currency_home_item"
require "pohoda/type_currency_foreign_item"
require "pohoda/invoice_item_type"
require "pohoda/partner_identity"
require "pohoda/my_address"
require "pohoda/address_internet_type"
require "pohoda/ref_type"
require "pohoda/establishment"
require "pohoda/ext_id_type"
require "pohoda/address"
require "pohoda/ship_to_address"
require "pohoda/account_type"
require "pohoda/type_round"
require "pohoda/stock_item_type"
require "pohoda/stock_ref_type"
require "pohoda/data_pack_type"
require "pohoda/data_pack_item_type"
require "pohoda/link_elemet_type"
require "pohoda/link_item_type"
require "pohoda/source_document_type"
require "pohoda/invoice_advance_payment_item_type"
require "pohoda/type_currency_home_item2"
require "pohoda/invoice_header_type"
require "pohoda/invoice_detail_type"
require "pohoda/invoice_summary_type"
require "pohoda/moss_type"
require "pohoda/resources_moss_type"
require 'pohoda/ref_type_reg_vat_in_eu'

require 'pohoda/builder/base_builder'
require 'pohoda/builder/data_pack'
require 'pohoda/builder/data_pack_item'
require 'pohoda/builder/invoice_type'
require 'pohoda/builder/number'
require 'pohoda/builder/address'
require 'pohoda/builder/ext_id_type'
require 'pohoda/builder/address'
require 'pohoda/builder/address_type'
require 'pohoda/builder/ship_to_address_type'
require 'pohoda/builder/invoice_item_type'
require 'pohoda/builder/type_currency_home_item'
require 'pohoda/builder/type_currency_foreign_item'
require 'pohoda/builder/stock_item_type'
require 'pohoda/builder/stock_ref_type'
require 'pohoda/builder/store'
require 'pohoda/builder/type_currency_home'
require 'pohoda/builder/round'
require 'pohoda/builder/type_currency_foreign'
require 'pohoda/builder/invoice_header_type'
require 'pohoda/builder/invoice_summary_type'
require 'pohoda/builder/invoice_detail_type'
require 'pohoda/builder/link_elemet_type'
require 'pohoda/builder/source_document_type'
require 'pohoda/builder/classification_vat_type'
require 'pohoda/builder/accounting_type'
require 'pohoda/builder/payment_type'
require 'pohoda/builder/my_group_of_account'
require 'pohoda/builder/account_type'
require 'pohoda/builder/ref_type'
require 'pohoda/builder/link_item_type'
require 'pohoda/builder/invoice_advance_payment_item_type'
require 'pohoda/builder/type_currency_home_item2'
require 'pohoda/builder/my_address'
require 'pohoda/builder/address_internet_type'
require 'pohoda/builder/establishment_type'
require 'pohoda/builder/ref_type_reg_vat_in_eu'
require 'pohoda/builder/moss_type'
require 'pohoda/builder/resources_moss_type'

module Pohoda
  def self.parse(raw)
    xml = Nokogiri::XML(raw).remove_namespaces!.at_xpath('//dataPack')

    DataPackType.new(xml)
  end
end
