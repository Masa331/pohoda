module Pohoda
  module Parsers
    module Rsp
      class ResponsePackItemType
        include ParserCore::BaseParser

        def addressbook_response
          submodel_at(Adb::AddressbookResponseType, 'adb:addressbookResponse')
        end

        def invoice_response
          submodel_at(Inv::InvoiceResponseType, 'inv:invoiceResponse')
        end

        def numerical_series_response
          submodel_at(Nm::NumericalSeriesResponseType, 'nms:numericalSeriesResponse')
        end

        def voucher_response
          submodel_at(Vch::VoucherResponseType, 'vch:voucherResponse')
        end

        def int_doc_response
          submodel_at(Int::IntDocResponseType, 'int:intDocResponse')
        end

        def vydejka_response
          submodel_at(Vyd::VydejkaResponseType, 'vyd:vydejkaResponse')
        end

        def prijemka_response
          submodel_at(Pri::PrijemkaResponseType, 'pri:prijemkaResponse')
        end

        def prodejka_response
          submodel_at(Pro::ProdejkaResponseType, 'pro:prodejkaResponse')
        end

        def stock_item_response
          submodel_at(Stk::StockItemResponseType, 'stk:stockItemResponse')
        end

        def order_response
          submodel_at(Ord::OrderResponseType, 'ord:orderResponse')
        end

        def enquiry_response
          submodel_at(Enq::EnquiryResponseType, 'enq:enquiryResponse')
        end

        def offer_response
          submodel_at(Ofr::OfferResponseType, 'ofr:offerResponse')
        end

        def vyroba_response
          submodel_at(Vyr::VyrobaResponseType, 'vyr:vyrobaResponse')
        end

        def prevodka_response
          submodel_at(Pre::PrevodkaResponseType, 'pre:prevodkaResponse')
        end

        def parameter_item_response
          submodel_at(Prm::ParameterItemResponseType, 'prm:parameterItemResponse')
        end

        def contract_response
          submodel_at(Con::ContractResponseType, 'con:contractResponse')
        end

        def storage_response
          submodel_at(Str::StorageResponseType, 'str:storageResponse')
        end

        def int_param_response
          submodel_at(Ipm::IntParamResponseType, 'ipm:intParamResponse')
        end

        def individual_price_response
          submodel_at(Idp::IndividualPriceResponseType, 'idp:individualPriceResponse')
        end

        def store_response
          submodel_at(Sto::StoreResponseType, 'sto:storeResponse')
        end

        def group_stocks_response
          submodel_at(Gr::GroupStocksResponseType, 'grs:groupStocksResponse')
        end

        def print_response
          submodel_at(Prn::PrintResponseType, 'prn:printResponse')
        end

        def send_eet_response
          submodel_at(SEET::SendEETResponseType, 'sEET:sendEETResponse')
        end

        def m_kasa_response
          submodel_at(MKasa::MKasaResponseType, 'mKasa:mKasaResponse')
        end

        def inventory_lists_response
          submodel_at(Ilt::InventoryListsResponseType, 'ilt:inventoryListsResponse')
        end

        def list_user_code_response
          submodel_at(Lst::ListUserCodeResponseType, 'lst:listUserCodeResponse')
        end

        def supplier_response
          submodel_at(Sup::SupplierResponseType, 'sup:supplierResponse')
        end

        def category_response
          submodel_at(Ctg::CategoryResponseType, 'ctg:categoryResponse')
        end

        def gdpr_response
          submodel_at(Gdp::GDPRResponseType, 'gdp:GDPRResponse')
        end

        def list_centre
          submodel_at(Lst::ListCentreType, 'lst:listCentre')
        end

        def list_activity
          submodel_at(Lst::ListActivityType, 'lst:listActivity')
        end

        def list_contract
          submodel_at(Lst::ListContractType, 'lst:listContract')
        end

        def list_cash
          submodel_at(Lst::ListCashType, 'lst:listCash')
        end

        def list_cash_register
          submodel_at(Lst::ListCashRegisterType, 'lst:listCashRegister')
        end

        def list_bank_account
          submodel_at(Lst::ListBankAccountType, 'lst:listBankAccount')
        end

        def list_accounting_single_entry
          submodel_at(Lst::ListAccountingSingleEntryType, 'lst:listAccountingSingleEntry')
        end

        def list_accounting_double_entry
          submodel_at(Lst::ListAccountingDoubleEntryType, 'lst:listAccountingDoubleEntry')
        end

        def list_account
          submodel_at(Lst::ListAccountType, 'lst:listAccount')
        end

        def list_storage
          submodel_at(Lst::ListStorageType, 'lst:listStorage')
        end

        def list_selling_price
          submodel_at(Lst::ListSellingPriceType, 'lst:listSellingPrice')
        end

        def list_numeric_series
          submodel_at(Lst::ListNumericSeriesType, 'lst:listNumericSeries')
        end

        def create_accounting_double_entry_response
          submodel_at(Lst::CreateAccountingDoubleEntryResponseType, 'lst:createAccountingDoubleEntryResponse')
        end

        def list_accounting_unit
          submodel_at(Acu::ListAccountingUnitType, 'acu:listAccountingUnit')
        end

        def list_stock
          submodel_at(LStk::ListStockType, 'lStk:listStock')
        end

        def list_invoice
          submodel_at(Lst::ListInvoiceType, 'lst:listInvoice')
        end

        def list_address_book
          submodel_at(LAdb::ListAddressBookType, 'lAdb:listAddressBook')
        end

        def list_order
          submodel_at(Lst::ListOrderType, 'lst:listOrder')
        end

        def list_enquiry
          submodel_at(Lst::ListEnquiryType, 'lst:listEnquiry')
        end

        def list_offer
          submodel_at(Lst::ListOfferType, 'lst:listOffer')
        end

        def list_parameter
          submodel_at(Lst::ListParameterType, 'lst:listParameter')
        end

        def list_user_code_pack
          submodel_at(Lst::ListUserCodePackType, 'lst:listUserCodePack')
        end

        def list_vydejka
          submodel_at(Lst::ListVydejkaType, 'lst:listVydejka')
        end

        def list_prijemka
          submodel_at(Lst::ListPrijemkaType, 'lst:listPrijemka')
        end

        def list_balance
          submodel_at(Lst::ListBalanceType, 'lst:listBalance')
        end

        def list_contract
          submodel_at(LCon::ListContractType, 'lCon:listContract')
        end

        def list_category
          submodel_at(Lst::ListCategoryType, 'lst:listCategory')
        end

        def list_int_param
          submodel_at(Lst::ListIntParamType, 'lst:listIntParam')
        end

        def list_int_doc
          submodel_at(Lst::ListIntDocType, 'lst:listIntDoc')
        end

        def list_prodejka
          submodel_at(Lst::ListProdejkaType, 'lst:listProdejka')
        end

        def list_voucher
          submodel_at(Lst::ListVoucherType, 'lst:listVoucher')
        end

        def list_prevodka
          submodel_at(Lst::ListPrevodkaType, 'lst:listPrevodka')
        end

        def list_vyroba
          submodel_at(Lst::ListVyrobaType, 'lst:listVyroba')
        end

        def tax_data_response
          submodel_at(Lst::ListVersionTypeTax, 'lst:taxDataResponse')
        end

        def list_individual_price
          submodel_at(Lst::ListIndividualPriceType, 'lst:listIndividualPrice')
        end

        def list_bank
          submodel_at(Lst::ListBankType, 'lst:listBank')
        end

        def list_accountancy
          submodel_at(Lst::ListAccountancyType, 'lst:listAccountancy')
        end

        def list_store
          submodel_at(Lst::ListStoreType, 'lst:listStore')
        end

        def list_supplier
          submodel_at(Lst::ListSupplierType, 'lst:listSupplier')
        end

        def list_group_stocks
          submodel_at(Lst::ListGroupStocksType, 'lst:listGroupStocks')
        end

        def list_action_price
          submodel_at(Lst::ListActionPriceType, 'lst:listActionPrice')
        end

        def list_inventory_lists
          submodel_at(Lst::ListInventoryListsType, 'lst:listInventoryLists')
        end

        def list_payment
          submodel_at(Lst::ListPaymentType, 'lst:listPayment')
        end

        def list_numerical_series
          submodel_at(Lst::ListNumericalSeriesType, 'lst:listNumericalSeries')
        end

        def list_gdpr
          submodel_at(Lst::ListGDPRType, 'lst:listGDPR')
        end

        def list_establishment
          submodel_at(Lst::ListEstablishmentType, 'lst:listEstablishment')
        end

        def list_centre
          submodel_at(LCen::ListCentreType, 'lCen:listCentre')
        end

        def list_activity
          submodel_at(LAcv::ListActivityType, 'lAcv:listActivity')
        end

        def list_accounting_form_of_payment
          submodel_at(Lst::ListAccountingFormOfPaymentType, 'lst:listAccountingFormOfPayment')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:addressbook_response] = addressbook_response.to_h if has? 'adb:addressbookResponse'
          hash[:invoice_response] = invoice_response.to_h if has? 'inv:invoiceResponse'
          hash[:numerical_series_response] = numerical_series_response.to_h if has? 'nms:numericalSeriesResponse'
          hash[:voucher_response] = voucher_response.to_h if has? 'vch:voucherResponse'
          hash[:int_doc_response] = int_doc_response.to_h if has? 'int:intDocResponse'
          hash[:vydejka_response] = vydejka_response.to_h if has? 'vyd:vydejkaResponse'
          hash[:prijemka_response] = prijemka_response.to_h if has? 'pri:prijemkaResponse'
          hash[:prodejka_response] = prodejka_response.to_h if has? 'pro:prodejkaResponse'
          hash[:stock_item_response] = stock_item_response.to_h if has? 'stk:stockItemResponse'
          hash[:order_response] = order_response.to_h if has? 'ord:orderResponse'
          hash[:enquiry_response] = enquiry_response.to_h if has? 'enq:enquiryResponse'
          hash[:offer_response] = offer_response.to_h if has? 'ofr:offerResponse'
          hash[:vyroba_response] = vyroba_response.to_h if has? 'vyr:vyrobaResponse'
          hash[:prevodka_response] = prevodka_response.to_h if has? 'pre:prevodkaResponse'
          hash[:parameter_item_response] = parameter_item_response.to_h if has? 'prm:parameterItemResponse'
          hash[:contract_response] = contract_response.to_h if has? 'con:contractResponse'
          hash[:storage_response] = storage_response.to_h if has? 'str:storageResponse'
          hash[:int_param_response] = int_param_response.to_h if has? 'ipm:intParamResponse'
          hash[:individual_price_response] = individual_price_response.to_h if has? 'idp:individualPriceResponse'
          hash[:store_response] = store_response.to_h if has? 'sto:storeResponse'
          hash[:group_stocks_response] = group_stocks_response.to_h if has? 'grs:groupStocksResponse'
          hash[:print_response] = print_response.to_h if has? 'prn:printResponse'
          hash[:send_eet_response] = send_eet_response.to_h if has? 'sEET:sendEETResponse'
          hash[:m_kasa_response] = m_kasa_response.to_h if has? 'mKasa:mKasaResponse'
          hash[:inventory_lists_response] = inventory_lists_response.to_h if has? 'ilt:inventoryListsResponse'
          hash[:list_user_code_response] = list_user_code_response.to_h if has? 'lst:listUserCodeResponse'
          hash[:supplier_response] = supplier_response.to_h if has? 'sup:supplierResponse'
          hash[:category_response] = category_response.to_h if has? 'ctg:categoryResponse'
          hash[:gdpr_response] = gdpr_response.to_h if has? 'gdp:GDPRResponse'
          hash[:list_centre] = list_centre.to_h if has? 'lst:listCentre'
          hash[:list_activity] = list_activity.to_h if has? 'lst:listActivity'
          hash[:list_contract] = list_contract.to_h if has? 'lst:listContract'
          hash[:list_cash] = list_cash.to_h if has? 'lst:listCash'
          hash[:list_cash_register] = list_cash_register.to_h if has? 'lst:listCashRegister'
          hash[:list_bank_account] = list_bank_account.to_h if has? 'lst:listBankAccount'
          hash[:list_accounting_single_entry] = list_accounting_single_entry.to_h if has? 'lst:listAccountingSingleEntry'
          hash[:list_accounting_double_entry] = list_accounting_double_entry.to_h if has? 'lst:listAccountingDoubleEntry'
          hash[:list_account] = list_account.to_h if has? 'lst:listAccount'
          hash[:list_storage] = list_storage.to_h if has? 'lst:listStorage'
          hash[:list_selling_price] = list_selling_price.to_h if has? 'lst:listSellingPrice'
          hash[:list_numeric_series] = list_numeric_series.to_h if has? 'lst:listNumericSeries'
          hash[:create_accounting_double_entry_response] = create_accounting_double_entry_response.to_h if has? 'lst:createAccountingDoubleEntryResponse'
          hash[:list_accounting_unit] = list_accounting_unit.to_h if has? 'acu:listAccountingUnit'
          hash[:list_stock] = list_stock.to_h if has? 'lStk:listStock'
          hash[:list_invoice] = list_invoice.to_h if has? 'lst:listInvoice'
          hash[:list_address_book] = list_address_book.to_h if has? 'lAdb:listAddressBook'
          hash[:list_order] = list_order.to_h if has? 'lst:listOrder'
          hash[:list_enquiry] = list_enquiry.to_h if has? 'lst:listEnquiry'
          hash[:list_offer] = list_offer.to_h if has? 'lst:listOffer'
          hash[:list_parameter] = list_parameter.to_h if has? 'lst:listParameter'
          hash[:list_user_code_pack] = list_user_code_pack.to_h if has? 'lst:listUserCodePack'
          hash[:list_vydejka] = list_vydejka.to_h if has? 'lst:listVydejka'
          hash[:list_prijemka] = list_prijemka.to_h if has? 'lst:listPrijemka'
          hash[:list_balance] = list_balance.to_h if has? 'lst:listBalance'
          hash[:list_contract] = list_contract.to_h if has? 'lCon:listContract'
          hash[:list_category] = list_category.to_h if has? 'lst:listCategory'
          hash[:list_int_param] = list_int_param.to_h if has? 'lst:listIntParam'
          hash[:list_int_doc] = list_int_doc.to_h if has? 'lst:listIntDoc'
          hash[:list_prodejka] = list_prodejka.to_h if has? 'lst:listProdejka'
          hash[:list_voucher] = list_voucher.to_h if has? 'lst:listVoucher'
          hash[:list_prevodka] = list_prevodka.to_h if has? 'lst:listPrevodka'
          hash[:list_vyroba] = list_vyroba.to_h if has? 'lst:listVyroba'
          hash[:tax_data_response] = tax_data_response.to_h if has? 'lst:taxDataResponse'
          hash[:list_individual_price] = list_individual_price.to_h if has? 'lst:listIndividualPrice'
          hash[:list_bank] = list_bank.to_h if has? 'lst:listBank'
          hash[:list_accountancy] = list_accountancy.to_h if has? 'lst:listAccountancy'
          hash[:list_store] = list_store.to_h if has? 'lst:listStore'
          hash[:list_supplier] = list_supplier.to_h if has? 'lst:listSupplier'
          hash[:list_group_stocks] = list_group_stocks.to_h if has? 'lst:listGroupStocks'
          hash[:list_action_price] = list_action_price.to_h if has? 'lst:listActionPrice'
          hash[:list_inventory_lists] = list_inventory_lists.to_h if has? 'lst:listInventoryLists'
          hash[:list_payment] = list_payment.to_h if has? 'lst:listPayment'
          hash[:list_numerical_series] = list_numerical_series.to_h if has? 'lst:listNumericalSeries'
          hash[:list_gdpr] = list_gdpr.to_h if has? 'lst:listGDPR'
          hash[:list_establishment] = list_establishment.to_h if has? 'lst:listEstablishment'
          hash[:list_centre] = list_centre.to_h if has? 'lCen:listCentre'
          hash[:list_activity] = list_activity.to_h if has? 'lAcv:listActivity'
          hash[:list_accounting_form_of_payment] = list_accounting_form_of_payment.to_h if has? 'lst:listAccountingFormOfPayment'

          hash
        end
      end
    end
  end
end