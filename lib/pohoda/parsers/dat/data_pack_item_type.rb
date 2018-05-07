module Pohoda
  module Parsers
    module Dat
      class DataPackItemType
        include ParserCore::BaseParser

        def addressbook
          submodel_at(Adb::AddressbookType, 'adb:addressbook')
        end

        def enquiry
          submodel_at(Enq::EnquiryType, 'enq:enquiry')
        end

        def int_doc
          submodel_at(Int::IntDocType, 'int:intDoc')
        end

        def invoice
          submodel_at(Inv::InvoiceType, 'inv:invoice')
        end

        def offer
          submodel_at(Ofr::OfferType, 'ofr:offer')
        end

        def order
          submodel_at(Ord::OrderType, 'ord:order')
        end

        def prodejka
          submodel_at(Pro::ProdejkaType, 'pro:prodejka')
        end

        def prijemka
          submodel_at(Pri::PrijemkaType, 'pri:prijemka')
        end

        def prevodka
          submodel_at(Pre::PrevodkaType, 'pre:prevodka')
        end

        def stock
          submodel_at(Stk::StockType, 'stk:stock')
        end

        def voucher
          submodel_at(Vch::VoucherType, 'vch:voucher')
        end

        def vydejka
          submodel_at(Vyd::VydejkaType, 'vyd:vydejka')
        end

        def vyroba
          submodel_at(Vyr::VyrobaType, 'vyr:vyroba')
        end

        def contract
          submodel_at(Con::ContractType, 'con:contract')
        end

        def store
          submodel_at(Sto::StoreType, 'sto:store')
        end

        def group_stocks
          submodel_at(Gr::GroupStocksType, 'grs:groupStocks')
        end

        def storage
          submodel_at(Str::StorageType, 'str:storage')
        end

        def category_detail
          submodel_at(Ctg::CategoryDetailType, 'ctg:categoryDetail')
        end

        def parameter
          submodel_at(Prm::ParameterType, 'prm:parameter')
        end

        def int_param_detail
          submodel_at(Ipm::IntParamDetailType, 'ipm:intParamDetail')
        end

        def inventory_lists
          submodel_at(Ilt::InventoryListsType, 'ilt:inventoryLists')
        end

        def numerical_series
          submodel_at(Nm::NumericalSeriesType, 'nms:numericalSeries')
        end

        def list_accountancy_request
          submodel_at(Lst::ListAccountancyRequestType, 'lst:listAccountancyRequest')
        end

        def list_address_book_request
          submodel_at(LAdb::ListAddressBookRequestType, 'lAdb:listAddressBookRequest')
        end

        def list_invoice_request
          submodel_at(Lst::ListInvoiceRequestType, 'lst:listInvoiceRequest')
        end

        def list_enquiry_request
          submodel_at(Lst::ListEnquiryRequestType, 'lst:listEnquiryRequest')
        end

        def list_offer_request
          submodel_at(Lst::ListOfferRequestType, 'lst:listOfferRequest')
        end

        def list_order_request
          submodel_at(Lst::ListOrderRequestType, 'lst:listOrderRequest')
        end

        def list_stock_request
          submodel_at(LStk::ListRequestStockType, 'lStk:listStockRequest')
        end

        def list_parameter_request
          submodel_at(Lst::ListParameterRequestType, 'lst:listParameterRequest')
        end

        def list_vydejka_request
          submodel_at(Lst::ListVydejkaRequestType, 'lst:listVydejkaRequest')
        end

        def list_prijemka_request
          submodel_at(Lst::ListPrijemkaRequestType, 'lst:listPrijemkaRequest')
        end

        def list_balance_request
          submodel_at(Lst::ListBalanceRequestType, 'lst:listBalanceRequest')
        end

        def create_accounting_double_entry
          submodel_at(Lst::CreateAccountingDoubleEntryType, 'lst:createAccountingDoubleEntry')
        end

        def list_user_code
          submodel_at(Lst::ListUserCodeType, 'lst:listUserCode')
        end

        def list_accounting_unit_request
          submodel_at(Lst::ListRequestType, 'acu:listAccountingUnitRequest')
        end

        def list_accounting_double_entry_request
          submodel_at(Lst::ListRequestAgendasType, 'lst:listAccountingDoubleEntryRequest')
        end

        def list_accounting_single_entry_request
          submodel_at(Lst::ListRequestAgendasType, 'lst:listAccountingSingleEntryRequest')
        end

        def list_account_request
          submodel_at(Lst::ListRequestType, 'lst:listAccountRequest')
        end

        def list_activity_request
          submodel_at(Lst::ListRequestType, 'lst:listActivityRequest')
        end

        def list_cash_request
          submodel_at(Lst::ListRequestType, 'lst:listCashRequest')
        end

        def list_cash_register_request
          submodel_at(Lst::ListCashRegisterRequestType, 'lst:listCashRegisterRequest')
        end

        def list_bank_account_request
          submodel_at(Lst::ListBankAccountRequestType, 'lst:listBankAccountRequest')
        end

        def list_contract_request
          submodel_at(LCon::ListRequestContractType, 'lCon:listContractRequest')
        end

        def list_centre_request
          submodel_at(Lst::ListRequestType, 'lst:listCentreRequest')
        end

        def list_numeric_series_request
          submodel_at(Lst::ListRequestAgendasType, 'lst:listNumericSeriesRequest')
        end

        def list_user_code_request
          submodel_at(Lst::ListUserCodeRequestType, 'lst:listUserCodeRequest')
        end

        def list_storage_request
          submodel_at(Lst::ListRequestStoresType, 'lst:listStorageRequest')
        end

        def list_selling_price_request
          submodel_at(Lst::ListRequestType, 'lst:listSellingPriceRequest')
        end

        def list_category_request
          submodel_at(Lst::ListCategoryRequestType, 'lst:listCategoryRequest')
        end

        def list_int_param_request
          submodel_at(Lst::ListIntParamRequestType, 'lst:listIntParamRequest')
        end

        def list_store_request
          submodel_at(Lst::ListStoreRequestType, 'lst:listStoreRequest')
        end

        def list_group_stocks_request
          submodel_at(Lst::ListGroupStocksRequestType, 'lst:listGroupStocksRequest')
        end

        def list_action_price_request
          submodel_at(Lst::ListActionPriceRequestType, 'lst:listActionPriceRequest')
        end

        def list_payment_request
          submodel_at(Lst::ListPaymentRequestType, 'lst:listPaymentRequest')
        end

        def list_numerical_series_request
          submodel_at(Lst::ListNumericalSeriesRequestType, 'lst:listNumericalSeriesRequest')
        end

        def m_kasa_request
          submodel_at(MKasa::MKasaRequestType, 'mKasa:mKasaRequest')
        end

        def print
          submodel_at(Prn::PrintType, 'prn:print')
        end

        def send_eet
          submodel_at(SEET::SendEETType, 'sEET:sendEET')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:addressbook] = addressbook.to_h_with_attrs if has? 'adb:addressbook'
          hash[:enquiry] = enquiry.to_h_with_attrs if has? 'enq:enquiry'
          hash[:int_doc] = int_doc.to_h_with_attrs if has? 'int:intDoc'
          hash[:invoice] = invoice.to_h_with_attrs if has? 'inv:invoice'
          hash[:offer] = offer.to_h_with_attrs if has? 'ofr:offer'
          hash[:order] = order.to_h_with_attrs if has? 'ord:order'
          hash[:prodejka] = prodejka.to_h_with_attrs if has? 'pro:prodejka'
          hash[:prijemka] = prijemka.to_h_with_attrs if has? 'pri:prijemka'
          hash[:prevodka] = prevodka.to_h_with_attrs if has? 'pre:prevodka'
          hash[:stock] = stock.to_h_with_attrs if has? 'stk:stock'
          hash[:voucher] = voucher.to_h_with_attrs if has? 'vch:voucher'
          hash[:vydejka] = vydejka.to_h_with_attrs if has? 'vyd:vydejka'
          hash[:vyroba] = vyroba.to_h_with_attrs if has? 'vyr:vyroba'
          hash[:contract] = contract.to_h_with_attrs if has? 'con:contract'
          hash[:store] = store.to_h_with_attrs if has? 'sto:store'
          hash[:group_stocks] = group_stocks.to_h_with_attrs if has? 'grs:groupStocks'
          hash[:storage] = storage.to_h_with_attrs if has? 'str:storage'
          hash[:category_detail] = category_detail.to_h_with_attrs if has? 'ctg:categoryDetail'
          hash[:parameter] = parameter.to_h_with_attrs if has? 'prm:parameter'
          hash[:int_param_detail] = int_param_detail.to_h_with_attrs if has? 'ipm:intParamDetail'
          hash[:inventory_lists] = inventory_lists.to_h_with_attrs if has? 'ilt:inventoryLists'
          hash[:numerical_series] = numerical_series.to_h_with_attrs if has? 'nms:numericalSeries'
          hash[:list_accountancy_request] = list_accountancy_request.to_h_with_attrs if has? 'lst:listAccountancyRequest'
          hash[:list_address_book_request] = list_address_book_request.to_h_with_attrs if has? 'lAdb:listAddressBookRequest'
          hash[:list_invoice_request] = list_invoice_request.to_h_with_attrs if has? 'lst:listInvoiceRequest'
          hash[:list_enquiry_request] = list_enquiry_request.to_h_with_attrs if has? 'lst:listEnquiryRequest'
          hash[:list_offer_request] = list_offer_request.to_h_with_attrs if has? 'lst:listOfferRequest'
          hash[:list_order_request] = list_order_request.to_h_with_attrs if has? 'lst:listOrderRequest'
          hash[:list_stock_request] = list_stock_request.to_h_with_attrs if has? 'lStk:listStockRequest'
          hash[:list_parameter_request] = list_parameter_request.to_h_with_attrs if has? 'lst:listParameterRequest'
          hash[:list_vydejka_request] = list_vydejka_request.to_h_with_attrs if has? 'lst:listVydejkaRequest'
          hash[:list_prijemka_request] = list_prijemka_request.to_h_with_attrs if has? 'lst:listPrijemkaRequest'
          hash[:list_balance_request] = list_balance_request.to_h_with_attrs if has? 'lst:listBalanceRequest'
          hash[:create_accounting_double_entry] = create_accounting_double_entry.to_h_with_attrs if has? 'lst:createAccountingDoubleEntry'
          hash[:list_user_code] = list_user_code.to_h_with_attrs if has? 'lst:listUserCode'
          hash[:list_accounting_unit_request] = list_accounting_unit_request.to_h_with_attrs if has? 'acu:listAccountingUnitRequest'
          hash[:list_accounting_double_entry_request] = list_accounting_double_entry_request.to_h_with_attrs if has? 'lst:listAccountingDoubleEntryRequest'
          hash[:list_accounting_single_entry_request] = list_accounting_single_entry_request.to_h_with_attrs if has? 'lst:listAccountingSingleEntryRequest'
          hash[:list_account_request] = list_account_request.to_h_with_attrs if has? 'lst:listAccountRequest'
          hash[:list_activity_request] = list_activity_request.to_h_with_attrs if has? 'lst:listActivityRequest'
          hash[:list_cash_request] = list_cash_request.to_h_with_attrs if has? 'lst:listCashRequest'
          hash[:list_cash_register_request] = list_cash_register_request.to_h_with_attrs if has? 'lst:listCashRegisterRequest'
          hash[:list_bank_account_request] = list_bank_account_request.to_h_with_attrs if has? 'lst:listBankAccountRequest'
          hash[:list_contract_request] = list_contract_request.to_h_with_attrs if has? 'lCon:listContractRequest'
          hash[:list_centre_request] = list_centre_request.to_h_with_attrs if has? 'lst:listCentreRequest'
          hash[:list_numeric_series_request] = list_numeric_series_request.to_h_with_attrs if has? 'lst:listNumericSeriesRequest'
          hash[:list_user_code_request] = list_user_code_request.to_h_with_attrs if has? 'lst:listUserCodeRequest'
          hash[:list_storage_request] = list_storage_request.to_h_with_attrs if has? 'lst:listStorageRequest'
          hash[:list_selling_price_request] = list_selling_price_request.to_h_with_attrs if has? 'lst:listSellingPriceRequest'
          hash[:list_category_request] = list_category_request.to_h_with_attrs if has? 'lst:listCategoryRequest'
          hash[:list_int_param_request] = list_int_param_request.to_h_with_attrs if has? 'lst:listIntParamRequest'
          hash[:list_store_request] = list_store_request.to_h_with_attrs if has? 'lst:listStoreRequest'
          hash[:list_group_stocks_request] = list_group_stocks_request.to_h_with_attrs if has? 'lst:listGroupStocksRequest'
          hash[:list_action_price_request] = list_action_price_request.to_h_with_attrs if has? 'lst:listActionPriceRequest'
          hash[:list_payment_request] = list_payment_request.to_h_with_attrs if has? 'lst:listPaymentRequest'
          hash[:list_numerical_series_request] = list_numerical_series_request.to_h_with_attrs if has? 'lst:listNumericalSeriesRequest'
          hash[:m_kasa_request] = m_kasa_request.to_h_with_attrs if has? 'mKasa:mKasaRequest'
          hash[:print] = print.to_h_with_attrs if has? 'prn:print'
          hash[:send_eet] = send_eet.to_h_with_attrs if has? 'sEET:sendEET'

          hash
        end
      end
    end
  end
end