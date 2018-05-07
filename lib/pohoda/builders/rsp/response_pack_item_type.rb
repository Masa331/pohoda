module Pohoda
  module Builders
    module Rsp
      class ResponsePackItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :addressbook_response
            root << Adb::AddressbookResponseType.new('', data[:addressbook_response]).builder
          end
          if data.key? :invoice_response
            root << Inv::InvoiceResponseType.new('', data[:invoice_response]).builder
          end
          if data.key? :numerical_series_response
            root << Nm::NumericalSeriesResponseType.new('', data[:numerical_series_response]).builder
          end
          if data.key? :voucher_response
            root << Vch::VoucherResponseType.new('', data[:voucher_response]).builder
          end
          if data.key? :int_doc_response
            root << Int::IntDocResponseType.new('', data[:int_doc_response]).builder
          end
          if data.key? :vydejka_response
            root << Vyd::VydejkaResponseType.new('', data[:vydejka_response]).builder
          end
          if data.key? :prijemka_response
            root << Pri::PrijemkaResponseType.new('', data[:prijemka_response]).builder
          end
          if data.key? :prodejka_response
            root << Pro::ProdejkaResponseType.new('', data[:prodejka_response]).builder
          end
          if data.key? :stock_item_response
            root << Stk::StockItemResponseType.new('', data[:stock_item_response]).builder
          end
          if data.key? :order_response
            root << Ord::OrderResponseType.new('', data[:order_response]).builder
          end
          if data.key? :enquiry_response
            root << Enq::EnquiryResponseType.new('', data[:enquiry_response]).builder
          end
          if data.key? :offer_response
            root << Ofr::OfferResponseType.new('', data[:offer_response]).builder
          end
          if data.key? :vyroba_response
            root << Vyr::VyrobaResponseType.new('', data[:vyroba_response]).builder
          end
          if data.key? :prevodka_response
            root << Pre::PrevodkaResponseType.new('', data[:prevodka_response]).builder
          end
          if data.key? :parameter_item_response
            root << Prm::ParameterItemResponseType.new('', data[:parameter_item_response]).builder
          end
          if data.key? :contract_response
            root << Con::ContractResponseType.new('', data[:contract_response]).builder
          end
          if data.key? :storage_response
            root << Str::StorageResponseType.new('', data[:storage_response]).builder
          end
          if data.key? :int_param_response
            root << Ipm::IntParamResponseType.new('', data[:int_param_response]).builder
          end
          if data.key? :individual_price_response
            root << Idp::IndividualPriceResponseType.new('', data[:individual_price_response]).builder
          end
          if data.key? :store_response
            root << Sto::StoreResponseType.new('', data[:store_response]).builder
          end
          if data.key? :group_stocks_response
            root << Gr::GroupStocksResponseType.new('', data[:group_stocks_response]).builder
          end
          if data.key? :print_response
            root << Prn::PrintResponseType.new('', data[:print_response]).builder
          end
          if data.key? :send_eet_response
            root << SEET::SendEETResponseType.new('', data[:send_eet_response]).builder
          end
          if data.key? :m_kasa_response
            root << MKasa::MKasaResponseType.new('', data[:m_kasa_response]).builder
          end
          if data.key? :inventory_lists_response
            root << Ilt::InventoryListsResponseType.new('', data[:inventory_lists_response]).builder
          end
          if data.key? :list_user_code_response
            root << Lst::ListUserCodeResponseType.new('', data[:list_user_code_response]).builder
          end
          if data.key? :supplier_response
            root << Sup::SupplierResponseType.new('', data[:supplier_response]).builder
          end
          if data.key? :category_response
            root << Ctg::CategoryResponseType.new('', data[:category_response]).builder
          end
          if data.key? :list_centre
            root << Lst::ListCentreType.new('', data[:list_centre]).builder
          end
          if data.key? :list_activity
            root << Lst::ListActivityType.new('', data[:list_activity]).builder
          end
          if data.key? :list_contract
            root << Lst::ListContractType.new('', data[:list_contract]).builder
          end
          if data.key? :list_cash
            root << Lst::ListCashType.new('', data[:list_cash]).builder
          end
          if data.key? :list_cash_register
            root << Lst::ListCashRegisterType.new('', data[:list_cash_register]).builder
          end
          if data.key? :list_bank_account
            root << Lst::ListBankAccountType.new('', data[:list_bank_account]).builder
          end
          if data.key? :list_accounting_single_entry
            root << Lst::ListAccountingSingleEntryType.new('', data[:list_accounting_single_entry]).builder
          end
          if data.key? :list_accounting_double_entry
            root << Lst::ListAccountingDoubleEntryType.new('', data[:list_accounting_double_entry]).builder
          end
          if data.key? :list_account
            root << Lst::ListAccountType.new('', data[:list_account]).builder
          end
          if data.key? :list_storage
            root << Lst::ListStorageType.new('', data[:list_storage]).builder
          end
          if data.key? :list_selling_price
            root << Lst::ListSellingPriceType.new('', data[:list_selling_price]).builder
          end
          if data.key? :list_numeric_series
            root << Lst::ListNumericSeriesType.new('', data[:list_numeric_series]).builder
          end
          if data.key? :create_accounting_double_entry_response
            root << Lst::CreateAccountingDoubleEntryResponseType.new('', data[:create_accounting_double_entry_response]).builder
          end
          if data.key? :list_accounting_unit
            root << Acu::ListAccountingUnitType.new('', data[:list_accounting_unit]).builder
          end
          if data.key? :list_stock
            root << LStk::ListStockType.new('', data[:list_stock]).builder
          end
          if data.key? :list_invoice
            root << Lst::ListInvoiceType.new('', data[:list_invoice]).builder
          end
          if data.key? :list_address_book
            root << LAdb::ListAddressBookType.new('', data[:list_address_book]).builder
          end
          if data.key? :list_order
            root << Lst::ListOrderType.new('', data[:list_order]).builder
          end
          if data.key? :list_enquiry
            root << Lst::ListEnquiryType.new('', data[:list_enquiry]).builder
          end
          if data.key? :list_offer
            root << Lst::ListOfferType.new('', data[:list_offer]).builder
          end
          if data.key? :list_parameter
            root << Lst::ListParameterType.new('', data[:list_parameter]).builder
          end
          if data.key? :list_user_code_pack
            root << Lst::ListUserCodePackType.new('', data[:list_user_code_pack]).builder
          end
          if data.key? :list_vydejka
            root << Lst::ListVydejkaType.new('', data[:list_vydejka]).builder
          end
          if data.key? :list_prijemka
            root << Lst::ListPrijemkaType.new('', data[:list_prijemka]).builder
          end
          if data.key? :list_balance
            root << Lst::ListBalanceType.new('', data[:list_balance]).builder
          end
          if data.key? :list_contract
            root << LCon::ListContractType.new('', data[:list_contract]).builder
          end
          if data.key? :list_category
            root << Lst::ListCategoryType.new('', data[:list_category]).builder
          end
          if data.key? :list_int_param
            root << Lst::ListIntParamType.new('', data[:list_int_param]).builder
          end
          if data.key? :list_int_doc
            root << Lst::ListIntDocType.new('', data[:list_int_doc]).builder
          end
          if data.key? :list_prodejka
            root << Lst::ListProdejkaType.new('', data[:list_prodejka]).builder
          end
          if data.key? :list_voucher
            root << Lst::ListVoucherType.new('', data[:list_voucher]).builder
          end
          if data.key? :list_prevodka
            root << Lst::ListPrevodkaType.new('', data[:list_prevodka]).builder
          end
          if data.key? :list_vyroba
            root << Lst::ListVyrobaType.new('', data[:list_vyroba]).builder
          end
          if data.key? :tax_data_response
            root << Lst::ListVersionTypeTax.new('', data[:tax_data_response]).builder
          end
          if data.key? :list_individual_price
            root << Lst::ListIndividualPriceType.new('', data[:list_individual_price]).builder
          end
          if data.key? :list_bank
            root << Lst::ListBankType.new('', data[:list_bank]).builder
          end
          if data.key? :list_accountancy
            root << Lst::ListAccountancyType.new('', data[:list_accountancy]).builder
          end
          if data.key? :list_store
            root << Lst::ListStoreType.new('', data[:list_store]).builder
          end
          if data.key? :list_supplier
            root << Lst::ListSupplierType.new('', data[:list_supplier]).builder
          end
          if data.key? :list_group_stocks
            root << Lst::ListGroupStocksType.new('', data[:list_group_stocks]).builder
          end
          if data.key? :list_action_price
            root << Lst::ListActionPriceType.new('', data[:list_action_price]).builder
          end
          if data.key? :list_inventory_lists
            root << Lst::ListInventoryListsType.new('', data[:list_inventory_lists]).builder
          end
          if data.key? :list_payment
            root << Lst::ListPaymentType.new('', data[:list_payment]).builder
          end
          if data.key? :list_numerical_series
            root << Lst::ListNumericalSeriesType.new('', data[:list_numerical_series]).builder
          end

          root
        end
      end
    end
  end
end