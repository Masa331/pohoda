module Pohoda
  module Builders
    module Dat
      class DataPackItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :addressbook
            root << Adb::AddressbookType.new('adb:addressbook', data[:addressbook]).builder
          end
          if data.key? :enquiry
            root << Enq::EnquiryType.new('enq:enquiry', data[:enquiry]).builder
          end
          if data.key? :int_doc
            root << Int::IntDocType.new('int:intDoc', data[:int_doc]).builder
          end
          if data.key? :invoice
            root << Inv::InvoiceType.new('inv:invoice', data[:invoice]).builder
          end
          if data.key? :offer
            root << Ofr::OfferType.new('ofr:offer', data[:offer]).builder
          end
          if data.key? :order
            root << Ord::OrderType.new('ord:order', data[:order]).builder
          end
          if data.key? :prodejka
            root << Pro::ProdejkaType.new('pro:prodejka', data[:prodejka]).builder
          end
          if data.key? :prijemka
            root << Pri::PrijemkaType.new('pri:prijemka', data[:prijemka]).builder
          end
          if data.key? :prevodka
            root << Pre::PrevodkaType.new('pre:prevodka', data[:prevodka]).builder
          end
          if data.key? :stock
            root << Stk::StockType.new('stk:stock', data[:stock]).builder
          end
          if data.key? :voucher
            root << Vch::VoucherType.new('vch:voucher', data[:voucher]).builder
          end
          if data.key? :vydejka
            root << Vyd::VydejkaType.new('vyd:vydejka', data[:vydejka]).builder
          end
          if data.key? :vyroba
            root << Vyr::VyrobaType.new('vyr:vyroba', data[:vyroba]).builder
          end
          if data.key? :contract
            root << Con::ContractType.new('con:contract', data[:contract]).builder
          end
          if data.key? :store
            root << Sto::StoreType.new('sto:store', data[:store]).builder
          end
          if data.key? :group_stocks
            root << Gr::GroupStocksType.new('grs:groupStocks', data[:group_stocks]).builder
          end
          if data.key? :storage
            root << Str::StorageType.new('str:storage', data[:storage]).builder
          end
          if data.key? :category_detail
            root << Ctg::CategoryDetailType.new('ctg:categoryDetail', data[:category_detail]).builder
          end
          if data.key? :parameter
            root << Prm::ParameterType.new('prm:parameter', data[:parameter]).builder
          end
          if data.key? :int_param_detail
            root << Ipm::IntParamDetailType.new('ipm:intParamDetail', data[:int_param_detail]).builder
          end
          if data.key? :inventory_lists
            root << Ilt::InventoryListsType.new('ilt:inventoryLists', data[:inventory_lists]).builder
          end
          if data.key? :numerical_series
            root << Nm::NumericalSeriesType.new('nms:numericalSeries', data[:numerical_series]).builder
          end
          if data.key? :gdpr
            root << Gdp::GDPRType.new('gdp:GDPR', data[:gdpr]).builder
          end
          if data.key? :list_accountancy_request
            root << Lst::ListAccountancyRequestType.new('lst:listAccountancyRequest', data[:list_accountancy_request]).builder
          end
          if data.key? :list_address_book_request
            root << LAdb::ListAddressBookRequestType.new('lAdb:listAddressBookRequest', data[:list_address_book_request]).builder
          end
          if data.key? :list_invoice_request
            root << Lst::ListInvoiceRequestType.new('lst:listInvoiceRequest', data[:list_invoice_request]).builder
          end
          if data.key? :list_enquiry_request
            root << Lst::ListEnquiryRequestType.new('lst:listEnquiryRequest', data[:list_enquiry_request]).builder
          end
          if data.key? :list_offer_request
            root << Lst::ListOfferRequestType.new('lst:listOfferRequest', data[:list_offer_request]).builder
          end
          if data.key? :list_order_request
            root << Lst::ListOrderRequestType.new('lst:listOrderRequest', data[:list_order_request]).builder
          end
          if data.key? :list_stock_request
            root << LStk::ListRequestStockType.new('lStk:listStockRequest', data[:list_stock_request]).builder
          end
          if data.key? :list_parameter_request
            root << Lst::ListParameterRequestType.new('lst:listParameterRequest', data[:list_parameter_request]).builder
          end
          if data.key? :list_vydejka_request
            root << Lst::ListVydejkaRequestType.new('lst:listVydejkaRequest', data[:list_vydejka_request]).builder
          end
          if data.key? :list_prijemka_request
            root << Lst::ListPrijemkaRequestType.new('lst:listPrijemkaRequest', data[:list_prijemka_request]).builder
          end
          if data.key? :list_balance_request
            root << Lst::ListBalanceRequestType.new('lst:listBalanceRequest', data[:list_balance_request]).builder
          end
          if data.key? :create_accounting_double_entry
            root << Lst::CreateAccountingDoubleEntryType.new('lst:createAccountingDoubleEntry', data[:create_accounting_double_entry]).builder
          end
          if data.key? :list_user_code
            root << Lst::ListUserCodeType.new('lst:listUserCode', data[:list_user_code]).builder
          end
          if data.key? :list_accounting_unit_request
            root << Lst::ListRequestType.new('acu:listAccountingUnitRequest', data[:list_accounting_unit_request]).builder
          end
          if data.key? :list_accounting_double_entry_request
            root << Lst::ListRequestAgendasType.new('lst:listAccountingDoubleEntryRequest', data[:list_accounting_double_entry_request]).builder
          end
          if data.key? :list_accounting_single_entry_request
            root << Lst::ListRequestAgendasType.new('lst:listAccountingSingleEntryRequest', data[:list_accounting_single_entry_request]).builder
          end
          if data.key? :list_account_request
            root << Lst::ListRequestType.new('lst:listAccountRequest', data[:list_account_request]).builder
          end
          if data.key? :list_activity_request
            root << Lst::ListRequestType.new('lst:listActivityRequest', data[:list_activity_request]).builder
          end
          if data.key? :list_cash_request
            root << Lst::ListRequestType.new('lst:listCashRequest', data[:list_cash_request]).builder
          end
          if data.key? :list_cash_register_request
            root << Lst::ListCashRegisterRequestType.new('lst:listCashRegisterRequest', data[:list_cash_register_request]).builder
          end
          if data.key? :list_bank_account_request
            root << Lst::ListBankAccountRequestType.new('lst:listBankAccountRequest', data[:list_bank_account_request]).builder
          end
          if data.key? :list_contract_request
            root << LCon::ListRequestContractType.new('lCon:listContractRequest', data[:list_contract_request]).builder
          end
          if data.key? :list_centre_request
            root << Lst::ListRequestType.new('lst:listCentreRequest', data[:list_centre_request]).builder
          end
          if data.key? :list_numeric_series_request
            root << Lst::ListRequestAgendasType.new('lst:listNumericSeriesRequest', data[:list_numeric_series_request]).builder
          end
          if data.key? :list_user_code_request
            root << Lst::ListUserCodeRequestType.new('lst:listUserCodeRequest', data[:list_user_code_request]).builder
          end
          if data.key? :list_storage_request
            root << Lst::ListRequestStoresType.new('lst:listStorageRequest', data[:list_storage_request]).builder
          end
          if data.key? :list_selling_price_request
            root << Lst::ListRequestType.new('lst:listSellingPriceRequest', data[:list_selling_price_request]).builder
          end
          if data.key? :list_category_request
            root << Lst::ListCategoryRequestType.new('lst:listCategoryRequest', data[:list_category_request]).builder
          end
          if data.key? :list_int_param_request
            root << Lst::ListIntParamRequestType.new('lst:listIntParamRequest', data[:list_int_param_request]).builder
          end
          if data.key? :list_store_request
            root << Lst::ListStoreRequestType.new('lst:listStoreRequest', data[:list_store_request]).builder
          end
          if data.key? :list_group_stocks_request
            root << Lst::ListGroupStocksRequestType.new('lst:listGroupStocksRequest', data[:list_group_stocks_request]).builder
          end
          if data.key? :list_action_price_request
            root << Lst::ListActionPriceRequestType.new('lst:listActionPriceRequest', data[:list_action_price_request]).builder
          end
          if data.key? :list_payment_request
            root << Lst::ListPaymentRequestType.new('lst:listPaymentRequest', data[:list_payment_request]).builder
          end
          if data.key? :list_numerical_series_request
            root << Lst::ListNumericalSeriesRequestType.new('lst:listNumericalSeriesRequest', data[:list_numerical_series_request]).builder
          end
          if data.key? :list_gdpr_request
            root << Lst::ListGDPRRequestType.new('lst:listGDPRRequest', data[:list_gdpr_request]).builder
          end
          if data.key? :list_establishment_request
            root << Lst::ListEstablishmentRequestType.new('lst:listEstablishmentRequest', data[:list_establishment_request]).builder
          end
          if data.key? :list_centre_request
            root << LCen::ListRequestCentreType.new('lCen:listCentreRequest', data[:list_centre_request]).builder
          end
          if data.key? :list_activity_request
            root << LAcv::ListRequestActivityType.new('lAcv:listActivityRequest', data[:list_activity_request]).builder
          end
          if data.key? :m_kasa_request
            root << MKasa::MKasaRequestType.new('mKasa:mKasaRequest', data[:m_kasa_request]).builder
          end
          if data.key? :print
            root << Prn::PrintType.new('prn:print', data[:print]).builder
          end
          if data.key? :send_eet
            root << SEET::SendEETType.new('sEET:sendEET', data[:send_eet]).builder
          end

          root
        end
      end
    end
  end
end