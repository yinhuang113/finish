class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :owner_id
      t.integer :company_rec_id
      t.string :company_id
      t.string :company_name
      t.string :phone_nbr
      t.string :phone_nbr_fax
      t.string :website_url
      t.string :keywords
      t.string :accound_nbr
      t.string :currency_id
      t.integer :time_zone_rec_id
      t.string :sic_code_id
      t.integer :remit_to_rec_id
      t.boolean :exchange_flag
      t.datetime :last_update
      t.string :updated_by
      t.integer :company_type_rec_id
      t.integer :company_status_rec_id
      t.integer :tax_code_rec_id
      t.integer :currency_rec_id
      t.integer :owner_level_rec_id
      t.boolean :billable_flag
      t.string :userfield_1
      t.string :userfield_2
      t.string :userfield_3
      t.string :userfield_4
      t.string :userfield_5
      t.string :userfield_6
      t.string :userfield_7
      t.string :userfield_8
      t.string :userfield_9
      t.string :userfield_10
      t.boolean :delet_flag
      t.datetime :date_deleted
      t.string :deleted_by
      t.integer :market_rec_id
      t.string :br_option
      t.boolean :lead_flag
      t.string :lead_source
      t.integer :parent_company_rec_id
      t.string :annual_revenue
      t.integer :revenue_year
      t.integer :nbr_employees
      t.integer :ownership_type_rec_id
      t.datetime :date_entered
      t.integer :billing_terms_rec_id
      t.integer :billing_delivery_rec_id
      t.string :cm_password
      t.integer :ref_contact_rec_id
      t.integer :ref_member_rec_id
      t.string :ref_other
      t.boolean :internal_flag
      t.string :exchange_guid
      t.string :sr_notify
      t.boolean :auto_assign_flag
      t.integer :sr_signoff_rec_id
      t.boolean :nosurvey_flag
      t.integer :bi_inv_template_rec_id
      t.boolean :bill_override_flag
      t.boolean :bill_sr_flag
      t.boolean :bill_complete_sr_flag
      t.boolean :bill_unapproved_sr_flag
      t.boolean :bill_complete_pm_flag
      t.boolean :bill_restrict_down_payment_pm_flag
      t.boolean :approval_flag
      t.string :tax_id
      t.string :exchange_href
      t.datetime :date_acquired
      t.boolean :unsubscribe_flag
      t.string :vender_nbr
      t.integer :iv_price_header_rec_id
      t.boolean :email_cc_flag
      t.string :email_cc_address
      t.string :mobile_guid

      t.timestamps
    end
  end
end
