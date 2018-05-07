module Pohoda
  module Builders
    module Dat
      class DataPackItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :addressbook
            root << Adb::AddressbookType.new('', data[:addressbook]).builder
          end
          if data.key? :enquiry
            root << Enq::EnquiryType.new('', data[:enquiry]).builder
          end
          if data.key? :int_doc
            root << Int::IntDocType.new('', data[:int_doc]).builder
          end
          if data.key? :invoice
            root << Inv::InvoiceType.new('', data[:invoice]).builder
          end
          if data.key? :offer
            root << Ofr::OfferType.new('', data[:offer]).builder
          end
          if data.key? :order
            root << Ord::OrderType.new('', data[:order]).builder
          end
          if data.key? :prodejka
            root << Pro::ProdejkaType.new('', data[:prodejka]).builder
          end
          if data.key? :prijemka
            root << Pri::PrijemkaType.new('', data[:prijemka]).builder
          end
          if data.key? :prevodka
            root << Pre::PrevodkaType.new('', data[:prevodka]).builder
          end
          if data.key? :stock
            root << Stk::StockType.new('', data[:stock]).builder
          end
          if data.key? :voucher
            root << Vch::VoucherType.new('', data[:voucher]).builder
          end
          if data.key? :vydejka
            root << Vyd::VydejkaType.new('', data[:vydejka]).builder
          end
          if data.key? :vyroba
            root << Vyr::VyrobaType.new('', data[:vyroba]).builder
          end
          if data.key? :contract
            root << Con::ContractType.new('', data[:contract]).builder
          end
          if data.key? :store
            root << Sto::StoreType.new('', data[:store]).builder
          end
          if data.key? :group_stocks
            root << Gr::GroupStocksType.new('', data[:group_stocks]).builder
          end
          if data.key? :storage
            root << Str::StorageType.new('', data[:storage]).builder
          end
          if data.key? :category_detail
            root << Ctg::CategoryDetailType.new('', data[:category_detail]).builder
          end
          if data.key? :parameter
            root << Prm::ParameterType.new('', data[:parameter]).builder
          end
          if data.key? :int_param_detail
            root << Ipm::IntParamDetailType.new('', data[:int_param_detail]).builder
          end
          if data.key? :inventory_lists
            root << Ilt::InventoryListsType.new('', data[:inventory_lists]).builder
          end
          if data.key? :numerical_series
            root << Nm::NumericalSeriesType.new('', data[:numerical_series]).builder
          end
          if data.key? :list_accountancy_request
            root << Lst::ListAccountancyRequestType.new('', data[:list_accountancy_request]).builder
          end
          if data.key? :list_address_book_request
            root << LAdb::ListAddressBookRequestType.new('', data[:list_address_book_request]).builder
          end
          if data.key? :list_invoice_request
            root << Lst::ListInvoiceRequestType.new('', data[:list_invoice_request]).builder
          end
          if data.key? :list_enquiry_request
            root << Lst::ListEnquiryRequestType.new('', data[:list_enquiry_request]).builder
          end
          if data.key? :list_offer_request
            root << Lst::ListOfferRequestType.new('', data[:list_offer_request]).builder
          end
          if data.key? :list_order_request
            root << Lst::ListOrderRequestType.new('', data[:list_order_request]).builder
          end
          if data.key? :list_stock_request
            root << LStk::ListRequestStockType.new('', data[:list_stock_request]).builder
          end
          if data.key? :list_parameter_request
            root << Lst::ListParameterRequestType.new('', data[:list_parameter_request]).builder
          end
          if data.key? :list_vydejka_request
            root << Lst::ListVydejkaRequestType.new('', data[:list_vydejka_request]).builder
          end
          if data.key? :list_prijemka_request
            root << Lst::ListPrijemkaRequestType.new('', data[:list_prijemka_request]).builder
          end
          if data.key? :list_balance_request
            root << Lst::ListBalanceRequestType.new('', data[:list_balance_request]).builder
          end
          if data.key? :create_accounting_double_entry
            root << Lst::CreateAccountingDoubleEntryType.new('', data[:create_accounting_double_entry]).builder
          end
          if data.key? :list_user_code
            root << Lst::ListUserCodeType.new('', data[:list_user_code]).builder
          end
          if data.key? :list_accounting_unit_request
            root << Lst::ListRequestType.new('', data[:list_accounting_unit_request]).builder
          end
          if data.key? :list_accounting_double_entry_request
            root << Lst::ListRequestAgendasType.new('', data[:list_accounting_double_entry_request]).builder
          end
          if data.key? :list_accounting_single_entry_request
            root << Lst::ListRequestAgendasType.new('', data[:list_accounting_single_entry_request]).builder
          end
          if data.key? :list_account_request
            root << Lst::ListRequestType.new('', data[:list_account_request]).builder
          end
          if data.key? :list_activity_request
            root << Lst::ListRequestType.new('', data[:list_activity_request]).builder
          end
          if data.key? :list_cash_request
            root << Lst::ListRequestType.new('', data[:list_cash_request]).builder
          end
          if data.key? :list_cash_register_request
            root << Lst::ListCashRegisterRequestType.new('', data[:list_cash_register_request]).builder
          end
          if data.key? :list_bank_account_request
            root << Lst::ListBankAccountRequestType.new('', data[:list_bank_account_request]).builder
          end
          if data.key? :list_contract_request
            root << LCon::ListRequestContractType.new('', data[:list_contract_request]).builder
          end
          if data.key? :list_centre_request
            root << Lst::ListRequestType.new('', data[:list_centre_request]).builder
          end
          if data.key? :list_numeric_series_request
            root << Lst::ListRequestAgendasType.new('', data[:list_numeric_series_request]).builder
          end
          if data.key? :list_user_code_request
            root << Lst::ListUserCodeRequestType.new('', data[:list_user_code_request]).builder
          end
          if data.key? :list_storage_request
            root << Lst::ListRequestStoresType.new('', data[:list_storage_request]).builder
          end
          if data.key? :list_selling_price_request
            root << Lst::ListRequestType.new('', data[:list_selling_price_request]).builder
          end
          if data.key? :list_category_request
            root << Lst::ListCategoryRequestType.new('', data[:list_category_request]).builder
          end
          if data.key? :list_int_param_request
            root << Lst::ListIntParamRequestType.new('', data[:list_int_param_request]).builder
          end
          if data.key? :list_store_request
            root << Lst::ListStoreRequestType.new('', data[:list_store_request]).builder
          end
          if data.key? :list_group_stocks_request
            root << Lst::ListGroupStocksRequestType.new('', data[:list_group_stocks_request]).builder
          end
          if data.key? :list_action_price_request
            root << Lst::ListActionPriceRequestType.new('', data[:list_action_price_request]).builder
          end
          if data.key? :list_payment_request
            root << Lst::ListPaymentRequestType.new('', data[:list_payment_request]).builder
          end
          if data.key? :list_numerical_series_request
            root << Lst::ListNumericalSeriesRequestType.new('', data[:list_numerical_series_request]).builder
          end
          if data.key? :m_kasa_request
            root << MKasa::MKasaRequestType.new('', data[:m_kasa_request]).builder
          end
          if data.key? :print
            root << Prn::PrintType.new('', data[:print]).builder
          end
          if data.key? :send_eet
            root << SEET::SendEETType.new('', data[:send_eet]).builder
          end

          root
        end
      end
    end
  end
end