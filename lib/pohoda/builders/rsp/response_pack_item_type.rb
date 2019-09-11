module Pohoda
  module Builders
    module Rsp
      class ResponsePackItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :addressbook_response
            root << Adb::AddressbookResponseType.new('adb:addressbookResponse', data[:addressbook_response]).builder
          end
          if data.key? :invoice_response
            root << Inv::InvoiceResponseType.new('inv:invoiceResponse', data[:invoice_response]).builder
          end
          if data.key? :numerical_series_response
            root << Nm::NumericalSeriesResponseType.new('nms:numericalSeriesResponse', data[:numerical_series_response]).builder
          end
          if data.key? :voucher_response
            root << Vch::VoucherResponseType.new('vch:voucherResponse', data[:voucher_response]).builder
          end
          if data.key? :int_doc_response
            root << Int::IntDocResponseType.new('int:intDocResponse', data[:int_doc_response]).builder
          end
          if data.key? :vydejka_response
            root << Vyd::VydejkaResponseType.new('vyd:vydejkaResponse', data[:vydejka_response]).builder
          end
          if data.key? :prijemka_response
            root << Pri::PrijemkaResponseType.new('pri:prijemkaResponse', data[:prijemka_response]).builder
          end
          if data.key? :prodejka_response
            root << Pro::ProdejkaResponseType.new('pro:prodejkaResponse', data[:prodejka_response]).builder
          end
          if data.key? :stock_item_response
            root << Stk::StockItemResponseType.new('stk:stockItemResponse', data[:stock_item_response]).builder
          end
          if data.key? :order_response
            root << Ord::OrderResponseType.new('ord:orderResponse', data[:order_response]).builder
          end
          if data.key? :enquiry_response
            root << Enq::EnquiryResponseType.new('enq:enquiryResponse', data[:enquiry_response]).builder
          end
          if data.key? :offer_response
            root << Ofr::OfferResponseType.new('ofr:offerResponse', data[:offer_response]).builder
          end
          if data.key? :vyroba_response
            root << Vyr::VyrobaResponseType.new('vyr:vyrobaResponse', data[:vyroba_response]).builder
          end
          if data.key? :prevodka_response
            root << Pre::PrevodkaResponseType.new('pre:prevodkaResponse', data[:prevodka_response]).builder
          end
          if data.key? :parameter_item_response
            root << Prm::ParameterItemResponseType.new('prm:parameterItemResponse', data[:parameter_item_response]).builder
          end
          if data.key? :contract_response
            root << Con::ContractResponseType.new('con:contractResponse', data[:contract_response]).builder
          end
          if data.key? :storage_response
            root << Str::StorageResponseType.new('str:storageResponse', data[:storage_response]).builder
          end
          if data.key? :int_param_response
            root << Ipm::IntParamResponseType.new('ipm:intParamResponse', data[:int_param_response]).builder
          end
          if data.key? :individual_price_response
            root << Idp::IndividualPriceResponseType.new('idp:individualPriceResponse', data[:individual_price_response]).builder
          end
          if data.key? :store_response
            root << Sto::StoreResponseType.new('sto:storeResponse', data[:store_response]).builder
          end
          if data.key? :group_stocks_response
            root << Gr::GroupStocksResponseType.new('grs:groupStocksResponse', data[:group_stocks_response]).builder
          end
          if data.key? :print_response
            root << Prn::PrintResponseType.new('prn:printResponse', data[:print_response]).builder
          end
          if data.key? :send_eet_response
            root << SEET::SendEETResponseType.new('sEET:sendEETResponse', data[:send_eet_response]).builder
          end
          if data.key? :m_kasa_response
            root << MKasa::MKasaResponseType.new('mKasa:mKasaResponse', data[:m_kasa_response]).builder
          end
          if data.key? :inventory_lists_response
            root << Ilt::InventoryListsResponseType.new('ilt:inventoryListsResponse', data[:inventory_lists_response]).builder
          end
          if data.key? :list_user_code_response
            root << Lst::ListUserCodeResponseType.new('lst:listUserCodeResponse', data[:list_user_code_response]).builder
          end
          if data.key? :supplier_response
            root << Sup::SupplierResponseType.new('sup:supplierResponse', data[:supplier_response]).builder
          end
          if data.key? :category_response
            root << Ctg::CategoryResponseType.new('ctg:categoryResponse', data[:category_response]).builder
          end
          if data.key? :gdpr_response
            root << Gdp::GDPRResponseType.new('gdp:GDPRResponse', data[:gdpr_response]).builder
          end
          if data.key? :list_centre
            root << Lst::ListCentreType.new('lst:listCentre', data[:list_centre]).builder
          end
          if data.key? :list_activity
            root << Lst::ListActivityType.new('lst:listActivity', data[:list_activity]).builder
          end
          if data.key? :list_contract
            root << Lst::ListContractType.new('lst:listContract', data[:list_contract]).builder
          end
          if data.key? :list_cash
            root << Lst::ListCashType.new('lst:listCash', data[:list_cash]).builder
          end
          if data.key? :list_cash_register
            root << Lst::ListCashRegisterType.new('lst:listCashRegister', data[:list_cash_register]).builder
          end
          if data.key? :list_bank_account
            root << Lst::ListBankAccountType.new('lst:listBankAccount', data[:list_bank_account]).builder
          end
          if data.key? :list_accounting_single_entry
            root << Lst::ListAccountingSingleEntryType.new('lst:listAccountingSingleEntry', data[:list_accounting_single_entry]).builder
          end
          if data.key? :list_accounting_double_entry
            root << Lst::ListAccountingDoubleEntryType.new('lst:listAccountingDoubleEntry', data[:list_accounting_double_entry]).builder
          end
          if data.key? :list_account
            root << Lst::ListAccountType.new('lst:listAccount', data[:list_account]).builder
          end
          if data.key? :list_storage
            root << Lst::ListStorageType.new('lst:listStorage', data[:list_storage]).builder
          end
          if data.key? :list_selling_price
            root << Lst::ListSellingPriceType.new('lst:listSellingPrice', data[:list_selling_price]).builder
          end
          if data.key? :list_numeric_series
            root << Lst::ListNumericSeriesType.new('lst:listNumericSeries', data[:list_numeric_series]).builder
          end
          if data.key? :create_accounting_double_entry_response
            root << Lst::CreateAccountingDoubleEntryResponseType.new('lst:createAccountingDoubleEntryResponse', data[:create_accounting_double_entry_response]).builder
          end
          if data.key? :list_accounting_unit
            root << Acu::ListAccountingUnitType.new('acu:listAccountingUnit', data[:list_accounting_unit]).builder
          end
          if data.key? :list_stock
            root << LStk::ListStockType.new('lStk:listStock', data[:list_stock]).builder
          end
          if data.key? :list_invoice
            root << Lst::ListInvoiceType.new('lst:listInvoice', data[:list_invoice]).builder
          end
          if data.key? :list_address_book
            root << LAdb::ListAddressBookType.new('lAdb:listAddressBook', data[:list_address_book]).builder
          end
          if data.key? :list_order
            root << Lst::ListOrderType.new('lst:listOrder', data[:list_order]).builder
          end
          if data.key? :list_enquiry
            root << Lst::ListEnquiryType.new('lst:listEnquiry', data[:list_enquiry]).builder
          end
          if data.key? :list_offer
            root << Lst::ListOfferType.new('lst:listOffer', data[:list_offer]).builder
          end
          if data.key? :list_parameter
            root << Lst::ListParameterType.new('lst:listParameter', data[:list_parameter]).builder
          end
          if data.key? :list_user_code_pack
            root << Lst::ListUserCodePackType.new('lst:listUserCodePack', data[:list_user_code_pack]).builder
          end
          if data.key? :list_vydejka
            root << Lst::ListVydejkaType.new('lst:listVydejka', data[:list_vydejka]).builder
          end
          if data.key? :list_prijemka
            root << Lst::ListPrijemkaType.new('lst:listPrijemka', data[:list_prijemka]).builder
          end
          if data.key? :list_balance
            root << Lst::ListBalanceType.new('lst:listBalance', data[:list_balance]).builder
          end
          if data.key? :list_contract
            root << LCon::ListContractType.new('lCon:listContract', data[:list_contract]).builder
          end
          if data.key? :list_category
            root << Lst::ListCategoryType.new('lst:listCategory', data[:list_category]).builder
          end
          if data.key? :list_int_param
            root << Lst::ListIntParamType.new('lst:listIntParam', data[:list_int_param]).builder
          end
          if data.key? :list_int_doc
            root << Lst::ListIntDocType.new('lst:listIntDoc', data[:list_int_doc]).builder
          end
          if data.key? :list_prodejka
            root << Lst::ListProdejkaType.new('lst:listProdejka', data[:list_prodejka]).builder
          end
          if data.key? :list_voucher
            root << Lst::ListVoucherType.new('lst:listVoucher', data[:list_voucher]).builder
          end
          if data.key? :list_prevodka
            root << Lst::ListPrevodkaType.new('lst:listPrevodka', data[:list_prevodka]).builder
          end
          if data.key? :list_vyroba
            root << Lst::ListVyrobaType.new('lst:listVyroba', data[:list_vyroba]).builder
          end
          if data.key? :tax_data_response
            root << Lst::ListVersionTypeTax.new('lst:taxDataResponse', data[:tax_data_response]).builder
          end
          if data.key? :list_individual_price
            root << Lst::ListIndividualPriceType.new('lst:listIndividualPrice', data[:list_individual_price]).builder
          end
          if data.key? :list_bank
            root << Lst::ListBankType.new('lst:listBank', data[:list_bank]).builder
          end
          if data.key? :list_accountancy
            root << Lst::ListAccountancyType.new('lst:listAccountancy', data[:list_accountancy]).builder
          end
          if data.key? :list_store
            root << Lst::ListStoreType.new('lst:listStore', data[:list_store]).builder
          end
          if data.key? :list_supplier
            root << Lst::ListSupplierType.new('lst:listSupplier', data[:list_supplier]).builder
          end
          if data.key? :list_group_stocks
            root << Lst::ListGroupStocksType.new('lst:listGroupStocks', data[:list_group_stocks]).builder
          end
          if data.key? :list_action_price
            root << Lst::ListActionPriceType.new('lst:listActionPrice', data[:list_action_price]).builder
          end
          if data.key? :list_inventory_lists
            root << Lst::ListInventoryListsType.new('lst:listInventoryLists', data[:list_inventory_lists]).builder
          end
          if data.key? :list_payment
            root << Lst::ListPaymentType.new('lst:listPayment', data[:list_payment]).builder
          end
          if data.key? :list_numerical_series
            root << Lst::ListNumericalSeriesType.new('lst:listNumericalSeries', data[:list_numerical_series]).builder
          end
          if data.key? :list_gdpr
            root << Lst::ListGDPRType.new('lst:listGDPR', data[:list_gdpr]).builder
          end
          if data.key? :list_establishment
            root << Lst::ListEstablishmentType.new('lst:listEstablishment', data[:list_establishment]).builder
          end
          if data.key? :list_centre
            root << LCen::ListCentreType.new('lCen:listCentre', data[:list_centre]).builder
          end
          if data.key? :list_activity
            root << LAcv::ListActivityType.new('lAcv:listActivity', data[:list_activity]).builder
          end
          if data.key? :list_accounting_form_of_payment
            root << Lst::ListAccountingFormOfPaymentType.new('lst:listAccountingFormOfPayment', data[:list_accounting_form_of_payment]).builder
          end

          root
        end
      end
    end
  end
end