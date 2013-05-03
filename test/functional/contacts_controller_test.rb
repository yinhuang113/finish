require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post :create, contact: { contact_extension: @contact.contact_extension, contact_type: @contact.contact_type, cost: @contact.cost, department: @contact.department, description: @contact.description, direct_fax: @contact.direct_fax, direct_phone: @contact.direct_phone, emergency_phone: @contact.emergency_phone, firstname: @contact.firstname, home_phone: @contact.home_phone, lastname: @contact.lastname, manager: @contact.manager, manufacture: @contact.manufacture, manufacture_part: @contact.manufacture_part, mobile_phone: @contact.mobile_phone, npoc: @contact.npoc, portal_password: @contact.portal_password, portal_security_level: @contact.portal_security_level, price: @contact.price, references_companies_who_own: @contact.references_companies_who_own, references_recent_orders: @contact.references_recent_orders, serial_numbers: @contact.serial_numbers, stock_location: @contact.stock_location, stock_on_hand: @contact.stock_on_hand, tax: @contact.tax, title: @contact.title, type: @contact.type, units: @contact.units, vendor_other: @contact.vendor_other, vendor_perferred: @contact.vendor_perferred, work_email_primary: @contact.work_email_primary, work_email_primary: @contact.work_email_primary, work_email_secondary: @contact.work_email_secondary, work_email_secondary: @contact.work_email_secondary, work_email_tertiary: @contact.work_email_tertiary }
    end

    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should show contact" do
    get :show, id: @contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact
    assert_response :success
  end

  test "should update contact" do
    put :update, id: @contact, contact: { contact_extension: @contact.contact_extension, contact_type: @contact.contact_type, cost: @contact.cost, department: @contact.department, description: @contact.description, direct_fax: @contact.direct_fax, direct_phone: @contact.direct_phone, emergency_phone: @contact.emergency_phone, firstname: @contact.firstname, home_phone: @contact.home_phone, lastname: @contact.lastname, manager: @contact.manager, manufacture: @contact.manufacture, manufacture_part: @contact.manufacture_part, mobile_phone: @contact.mobile_phone, npoc: @contact.npoc, portal_password: @contact.portal_password, portal_security_level: @contact.portal_security_level, price: @contact.price, references_companies_who_own: @contact.references_companies_who_own, references_recent_orders: @contact.references_recent_orders, serial_numbers: @contact.serial_numbers, stock_location: @contact.stock_location, stock_on_hand: @contact.stock_on_hand, tax: @contact.tax, title: @contact.title, type: @contact.type, units: @contact.units, vendor_other: @contact.vendor_other, vendor_perferred: @contact.vendor_perferred, work_email_primary: @contact.work_email_primary, work_email_primary: @contact.work_email_primary, work_email_secondary: @contact.work_email_secondary, work_email_secondary: @contact.work_email_secondary, work_email_tertiary: @contact.work_email_tertiary }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end
