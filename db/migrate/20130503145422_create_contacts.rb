class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.boolean :ppoc
      t.boolean :manager
      t.string :portal_password
      t.integer :portal_security_level
      t.string :firstname
      t.string :lastname
      t.string :title
      t.string :department
      t.string :cotact_type
      t.string :direct_phone
      t.string :contact_extension
      t.string :mobile_phone
      t.string :home_phone
      t.string :emergency_phone
      t.string :direct_fax
      t.string :work_email_primary
      t.string :work_email_secondary
      t.string :work_email_tertiary
      t.string :personal_email_primary
      t.string :personal_email_secondary
      t.string :personal_email_tertiary
      t.string :reports_to
      t.string :primary_site
      t.boolean :active_inactive
      t.text :notes
      t.string :machine_id1
      t.string :machine_id2
      t.string :machine_id3
      t.string :passwords
      t.string :cell_phone_provider
      t.string :cell_phone_account_number
      t.string :cell_phone_model
      t.string :home_isp
      t.text :homeuestion_answer
      t.text :security_question_answer2
      t.text :secourtiy_question_answer3
      t.text :securtiy_question_answer4
      t.text :security_question_answer5
      t.string :dvr_ip
      t.string :dvr_username
      t.string :dvr_password
      t.string :dvr_url
      t.string :dvr_model
      t.string :vendor_profile
      t.string :vendor_profile2
      t.string :vendor_profile3
      t.string :vendor_profile4
      t.string :vendor_profile5
      t.string :place_of_birth
      t.string :mothers_maiden_name
      t.string :last_4_digits_of_social
      t.string :pets_name
      t.string :personal_credit_card
      t.string :nickname
      t.string :gender
      t.string :college
      t.datetime :birthday
      t.boolean :married
      t.boolean :children
      t.text :child1
      t.text :child2
      t.string :significant_other
      t.datetime :anniversary
      t.string :photo
      t.string :home_address1
      t.string :home_address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.boolean :newsletter_opt_in
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.string :instagram
      t.string :personal_skype
      t.string :personal_gchat
      t.string :personal_aim
      t.string :personal_msn
      t.string :personal_yahoo

      t.timestamps
    end
  end
end