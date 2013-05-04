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
      post :create, contact: { active_inactive: @contact.active_inactive, anniversary: @contact.anniversary, birthday: @contact.birthday, cell_phone_account_number: @contact.cell_phone_account_number, cell_phone_model: @contact.cell_phone_model, cell_phone_provider: @contact.cell_phone_provider, child1: @contact.child1, child2: @contact.child2, children: @contact.children, city: @contact.city, college: @contact.college, contact_extension: @contact.contact_extension, cotact_type: @contact.cotact_type, country: @contact.country, department: @contact.department, direct_fax: @contact.direct_fax, direct_phone: @contact.direct_phone, dvr_ip: @contact.dvr_ip, dvr_model: @contact.dvr_model, dvr_password: @contact.dvr_password, dvr_url: @contact.dvr_url, dvr_username: @contact.dvr_username, emergency_phone: @contact.emergency_phone, facebook: @contact.facebook, firstname: @contact.firstname, gender: @contact.gender, home_address1: @contact.home_address1, home_address2: @contact.home_address2, home_isp: @contact.home_isp, home_phone: @contact.home_phone, homeuestion_answer: @contact.homeuestion_answer, instagram: @contact.instagram, last_4_digits_of_social: @contact.last_4_digits_of_social, lastname: @contact.lastname, linkedin: @contact.linkedin, machine_id1: @contact.machine_id1, machine_id2: @contact.machine_id2, machine_id3: @contact.machine_id3, manager: @contact.manager, married: @contact.married, mobile_phone: @contact.mobile_phone, mothers_maiden_name: @contact.mothers_maiden_name, newsletter_opt_in: @contact.newsletter_opt_in, nickname: @contact.nickname, notes: @contact.notes, passwords: @contact.passwords, personal_aim: @contact.personal_aim, personal_credit_card: @contact.personal_credit_card, personal_email_primary: @contact.personal_email_primary, personal_email_secondary: @contact.personal_email_secondary, personal_email_tertiary: @contact.personal_email_tertiary, personal_gchat: @contact.personal_gchat, personal_msn: @contact.personal_msn, personal_skype: @contact.personal_skype, personal_yahoo: @contact.personal_yahoo, pets_name: @contact.pets_name, photo: @contact.photo, place_of_birth: @contact.place_of_birth, portal_password: @contact.portal_password, portal_security_level: @contact.portal_security_level, ppoc: @contact.ppoc, primary_site: @contact.primary_site, reports_to: @contact.reports_to, secourtiy_question_answer3: @contact.secourtiy_question_answer3, security_question_answer2: @contact.security_question_answer2, security_question_answer5: @contact.security_question_answer5, securtiy_question_answer4: @contact.securtiy_question_answer4, significant_other: @contact.significant_other, state: @contact.state, title: @contact.title, twitter: @contact.twitter, vendor_profile2: @contact.vendor_profile2, vendor_profile3: @contact.vendor_profile3, vendor_profile4: @contact.vendor_profile4, vendor_profile5: @contact.vendor_profile5, vendor_profile: @contact.vendor_profile, work_email_primary: @contact.work_email_primary, work_email_secondary: @contact.work_email_secondary, work_email_tertiary: @contact.work_email_tertiary, zip: @contact.zip }
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
    put :update, id: @contact, contact: { active_inactive: @contact.active_inactive, anniversary: @contact.anniversary, birthday: @contact.birthday, cell_phone_account_number: @contact.cell_phone_account_number, cell_phone_model: @contact.cell_phone_model, cell_phone_provider: @contact.cell_phone_provider, child1: @contact.child1, child2: @contact.child2, children: @contact.children, city: @contact.city, college: @contact.college, contact_extension: @contact.contact_extension, cotact_type: @contact.cotact_type, country: @contact.country, department: @contact.department, direct_fax: @contact.direct_fax, direct_phone: @contact.direct_phone, dvr_ip: @contact.dvr_ip, dvr_model: @contact.dvr_model, dvr_password: @contact.dvr_password, dvr_url: @contact.dvr_url, dvr_username: @contact.dvr_username, emergency_phone: @contact.emergency_phone, facebook: @contact.facebook, firstname: @contact.firstname, gender: @contact.gender, home_address1: @contact.home_address1, home_address2: @contact.home_address2, home_isp: @contact.home_isp, home_phone: @contact.home_phone, homeuestion_answer: @contact.homeuestion_answer, instagram: @contact.instagram, last_4_digits_of_social: @contact.last_4_digits_of_social, lastname: @contact.lastname, linkedin: @contact.linkedin, machine_id1: @contact.machine_id1, machine_id2: @contact.machine_id2, machine_id3: @contact.machine_id3, manager: @contact.manager, married: @contact.married, mobile_phone: @contact.mobile_phone, mothers_maiden_name: @contact.mothers_maiden_name, newsletter_opt_in: @contact.newsletter_opt_in, nickname: @contact.nickname, notes: @contact.notes, passwords: @contact.passwords, personal_aim: @contact.personal_aim, personal_credit_card: @contact.personal_credit_card, personal_email_primary: @contact.personal_email_primary, personal_email_secondary: @contact.personal_email_secondary, personal_email_tertiary: @contact.personal_email_tertiary, personal_gchat: @contact.personal_gchat, personal_msn: @contact.personal_msn, personal_skype: @contact.personal_skype, personal_yahoo: @contact.personal_yahoo, pets_name: @contact.pets_name, photo: @contact.photo, place_of_birth: @contact.place_of_birth, portal_password: @contact.portal_password, portal_security_level: @contact.portal_security_level, ppoc: @contact.ppoc, primary_site: @contact.primary_site, reports_to: @contact.reports_to, secourtiy_question_answer3: @contact.secourtiy_question_answer3, security_question_answer2: @contact.security_question_answer2, security_question_answer5: @contact.security_question_answer5, securtiy_question_answer4: @contact.securtiy_question_answer4, significant_other: @contact.significant_other, state: @contact.state, title: @contact.title, twitter: @contact.twitter, vendor_profile2: @contact.vendor_profile2, vendor_profile3: @contact.vendor_profile3, vendor_profile4: @contact.vendor_profile4, vendor_profile5: @contact.vendor_profile5, vendor_profile: @contact.vendor_profile, work_email_primary: @contact.work_email_primary, work_email_secondary: @contact.work_email_secondary, work_email_tertiary: @contact.work_email_tertiary, zip: @contact.zip }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end
