require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { accound_nbr: @company.accound_nbr, annual_revenue: @company.annual_revenue, approval_flag: @company.approval_flag, auto_assign_flag: @company.auto_assign_flag, bi_inv_template_rec_id: @company.bi_inv_template_rec_id, bill_complete_pm_flag: @company.bill_complete_pm_flag, bill_complete_sr_flag: @company.bill_complete_sr_flag, bill_override_flag: @company.bill_override_flag, bill_restrict_down_payment_pm_flag: @company.bill_restrict_down_payment_pm_flag, bill_sr_flag: @company.bill_sr_flag, bill_unapproved_sr_flag: @company.bill_unapproved_sr_flag, billable_flag: @company.billable_flag, billing_delivery_rec_id: @company.billing_delivery_rec_id, billing_terms_rec_id: @company.billing_terms_rec_id, br_option: @company.br_option, cm_password: @company.cm_password, company_id: @company.company_id, company_name: @company.company_name, company_rec_id: @company.company_rec_id, company_status_rec_id: @company.company_status_rec_id, company_type_rec_id: @company.company_type_rec_id, currency_id: @company.currency_id, currency_rec_id: @company.currency_rec_id, date_acquired: @company.date_acquired, date_deleted: @company.date_deleted, date_entered: @company.date_entered, delet_flag: @company.delet_flag, deleted_by: @company.deleted_by, email_cc_address: @company.email_cc_address, email_cc_flag: @company.email_cc_flag, exchange_flag: @company.exchange_flag, exchange_guid: @company.exchange_guid, exchange_href: @company.exchange_href, internal_flag: @company.internal_flag, iv_price_header_rec_id: @company.iv_price_header_rec_id, keywords: @company.keywords, last_update: @company.last_update, lead_flag: @company.lead_flag, lead_source: @company.lead_source, market_rec_id: @company.market_rec_id, mobile_guid: @company.mobile_guid, nbr_employees: @company.nbr_employees, nosurvey_flag: @company.nosurvey_flag, owner_id: @company.owner_id, owner_level_rec_id: @company.owner_level_rec_id, ownership_type_rec_id: @company.ownership_type_rec_id, parent_company_rec_id: @company.parent_company_rec_id, phone_nbr: @company.phone_nbr, phone_nbr_fax: @company.phone_nbr_fax, ref_contact_rec_id: @company.ref_contact_rec_id, ref_member_rec_id: @company.ref_member_rec_id, ref_other: @company.ref_other, remit_to_rec_id: @company.remit_to_rec_id, revenue_year: @company.revenue_year, sic_code_id: @company.sic_code_id, sr_notify: @company.sr_notify, sr_signoff_rec_id: @company.sr_signoff_rec_id, tax_code_rec_id: @company.tax_code_rec_id, tax_id: @company.tax_id, time_zone_rec_id: @company.time_zone_rec_id, unsubscribe_flag: @company.unsubscribe_flag, updated_by: @company.updated_by, userfield_10: @company.userfield_10, userfield_1: @company.userfield_1, userfield_2: @company.userfield_2, userfield_3: @company.userfield_3, userfield_4: @company.userfield_4, userfield_5: @company.userfield_5, userfield_6: @company.userfield_6, userfield_7: @company.userfield_7, userfield_8: @company.userfield_8, userfield_9: @company.userfield_9, vender_nbr: @company.vender_nbr, website_url: @company.website_url }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    put :update, id: @company, company: { accound_nbr: @company.accound_nbr, annual_revenue: @company.annual_revenue, approval_flag: @company.approval_flag, auto_assign_flag: @company.auto_assign_flag, bi_inv_template_rec_id: @company.bi_inv_template_rec_id, bill_complete_pm_flag: @company.bill_complete_pm_flag, bill_complete_sr_flag: @company.bill_complete_sr_flag, bill_override_flag: @company.bill_override_flag, bill_restrict_down_payment_pm_flag: @company.bill_restrict_down_payment_pm_flag, bill_sr_flag: @company.bill_sr_flag, bill_unapproved_sr_flag: @company.bill_unapproved_sr_flag, billable_flag: @company.billable_flag, billing_delivery_rec_id: @company.billing_delivery_rec_id, billing_terms_rec_id: @company.billing_terms_rec_id, br_option: @company.br_option, cm_password: @company.cm_password, company_id: @company.company_id, company_name: @company.company_name, company_rec_id: @company.company_rec_id, company_status_rec_id: @company.company_status_rec_id, company_type_rec_id: @company.company_type_rec_id, currency_id: @company.currency_id, currency_rec_id: @company.currency_rec_id, date_acquired: @company.date_acquired, date_deleted: @company.date_deleted, date_entered: @company.date_entered, delet_flag: @company.delet_flag, deleted_by: @company.deleted_by, email_cc_address: @company.email_cc_address, email_cc_flag: @company.email_cc_flag, exchange_flag: @company.exchange_flag, exchange_guid: @company.exchange_guid, exchange_href: @company.exchange_href, internal_flag: @company.internal_flag, iv_price_header_rec_id: @company.iv_price_header_rec_id, keywords: @company.keywords, last_update: @company.last_update, lead_flag: @company.lead_flag, lead_source: @company.lead_source, market_rec_id: @company.market_rec_id, mobile_guid: @company.mobile_guid, nbr_employees: @company.nbr_employees, nosurvey_flag: @company.nosurvey_flag, owner_id: @company.owner_id, owner_level_rec_id: @company.owner_level_rec_id, ownership_type_rec_id: @company.ownership_type_rec_id, parent_company_rec_id: @company.parent_company_rec_id, phone_nbr: @company.phone_nbr, phone_nbr_fax: @company.phone_nbr_fax, ref_contact_rec_id: @company.ref_contact_rec_id, ref_member_rec_id: @company.ref_member_rec_id, ref_other: @company.ref_other, remit_to_rec_id: @company.remit_to_rec_id, revenue_year: @company.revenue_year, sic_code_id: @company.sic_code_id, sr_notify: @company.sr_notify, sr_signoff_rec_id: @company.sr_signoff_rec_id, tax_code_rec_id: @company.tax_code_rec_id, tax_id: @company.tax_id, time_zone_rec_id: @company.time_zone_rec_id, unsubscribe_flag: @company.unsubscribe_flag, updated_by: @company.updated_by, userfield_10: @company.userfield_10, userfield_1: @company.userfield_1, userfield_2: @company.userfield_2, userfield_3: @company.userfield_3, userfield_4: @company.userfield_4, userfield_5: @company.userfield_5, userfield_6: @company.userfield_6, userfield_7: @company.userfield_7, userfield_8: @company.userfield_8, userfield_9: @company.userfield_9, vender_nbr: @company.vender_nbr, website_url: @company.website_url }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end
