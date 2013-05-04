# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130503152348) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "assets", :force => true do |t|
    t.string   "company"
    t.string   "contact"
    t.string   "product"
    t.string   "name"
    t.text     "description"
    t.string   "cost"
    t.string   "price"
    t.string   "manufacturer"
    t.string   "serial_numbers"
    t.string   "type"
    t.string   "refer_tickets"
    t.string   "refer_projects"
    t.string   "refer_locations"
    t.string   "refer_purchase_order"
    t.string   "refer_sales_order"
    t.string   "refer_invoices"
    t.string   "date_of_installation"
    t.datetime "warranty_date_start"
    t.datetime "warranty_date_end"
    t.string   "license_key"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "companies", :force => true do |t|
    t.integer  "contact_id"
    t.string   "company_name"
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.string   "industry"
    t.string   "status"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "primary_contact_fn"
    t.string   "primary_contact_ln"
    t.string   "s_street_add"
    t.string   "s_city"
    t.string   "s_state"
    t.string   "s_phone"
    t.string   "s_hours"
    t.string   "s_afterhourscontactname"
    t.string   "s_afterhourscontactphone"
    t.string   "s_round_trip_mileage"
    t.string   "s_tolls"
    t.string   "s_map"
    t.string   "sales_activities"
    t.string   "devices"
    t.string   "software_name"
    t.string   "software_licenses"
    t.string   "software_expiration"
    t.string   "invoices"
    t.string   "open_invoices"
    t.string   "open_credit_invoices"
    t.string   "billing_contact_fn"
    t.string   "billing_contact_ln"
    t.string   "billing_contact_title"
    t.string   "billing_contact_email"
    t.string   "billing_contact_phone"
    t.string   "billing_info_account_type"
    t.string   "billing_info_approval_level"
    t.string   "billing_info_approver"
    t.text     "knowledgebase_articles"
    t.string   "agrements_terms"
    t.string   "agrements_cycle"
    t.datetime "agreements_startdate"
    t.datetime "agreements_endstart"
    t.string   "agreements_lastinvoiceamount"
    t.string   "agreements_devices_count"
    t.string   "agreements_devices_cost"
    t.string   "agreements_devices_price"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "contacts", :force => true do |t|
    t.boolean  "ppoc"
    t.boolean  "manager"
    t.string   "portal_password"
    t.integer  "portal_security_level"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "title"
    t.string   "department"
    t.string   "cotact_type"
    t.string   "direct_phone"
    t.string   "contact_extension"
    t.string   "mobile_phone"
    t.string   "home_phone"
    t.string   "emergency_phone"
    t.string   "direct_fax"
    t.string   "work_email_primary"
    t.string   "work_email_secondary"
    t.string   "work_email_tertiary"
    t.string   "personal_email_primary"
    t.string   "personal_email_secondary"
    t.string   "personal_email_tertiary"
    t.string   "reports_to"
    t.string   "primary_site"
    t.boolean  "active_inactive"
    t.text     "notes"
    t.string   "machine_id1"
    t.string   "machine_id2"
    t.string   "machine_id3"
    t.string   "passwords"
    t.string   "cell_phone_provider"
    t.string   "cell_phone_account_number"
    t.string   "cell_phone_model"
    t.string   "home_isp"
    t.text     "homeuestion_answer"
    t.text     "security_question_answer2"
    t.text     "secourtiy_question_answer3"
    t.text     "securtiy_question_answer4"
    t.text     "security_question_answer5"
    t.string   "dvr_ip"
    t.string   "dvr_username"
    t.string   "dvr_password"
    t.string   "dvr_url"
    t.string   "dvr_model"
    t.string   "vendor_profile"
    t.string   "vendor_profile2"
    t.string   "vendor_profile3"
    t.string   "vendor_profile4"
    t.string   "vendor_profile5"
    t.string   "place_of_birth"
    t.string   "mothers_maiden_name"
    t.string   "last_4_digits_of_social"
    t.string   "pets_name"
    t.string   "personal_credit_card"
    t.string   "nickname"
    t.string   "gender"
    t.string   "college"
    t.datetime "birthday"
    t.boolean  "married"
    t.boolean  "children"
    t.text     "child1"
    t.text     "child2"
    t.string   "significant_other"
    t.datetime "anniversary"
    t.string   "photo"
    t.string   "home_address1"
    t.string   "home_address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.boolean  "newsletter_opt_in"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "instagram"
    t.string   "personal_skype"
    t.string   "personal_gchat"
    t.string   "personal_aim"
    t.string   "personal_msn"
    t.string   "personal_yahoo"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "inventories", :force => true do |t|
    t.string   "product"
    t.string   "manufacture"
    t.string   "manufacture_part"
    t.string   "vendor_perferred"
    t.string   "vendor_other"
    t.string   "inventory_type"
    t.string   "units"
    t.string   "tax"
    t.string   "stock_on_hand"
    t.string   "stock_location"
    t.string   "references_sales_orders"
    t.string   "references_companies_who_own"
    t.string   "references_purchase_orders"
    t.string   "references_rmas"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "invoices", :force => true do |t|
    t.string   "company_name"
    t.string   "phone"
    t.string   "fax"
    t.string   "status"
    t.string   "site_street_address"
    t.string   "site_city"
    t.boolean  "site_state"
    t.string   "site_zip"
    t.string   "site_phone"
    t.string   "site_business_hours"
    t.string   "site_round_trip_mileage"
    t.string   "site_tolls"
    t.string   "site_map"
    t.string   "open_invoices"
    t.string   "open_credit_invoices"
    t.string   "billing_contact__fn"
    t.string   "billing_contact_ln"
    t.string   "billing_contact_title"
    t.string   "billing_contact_email"
    t.string   "billing_contact_phone"
    t.string   "billing_info_account_type"
    t.string   "billing_info_approval_level"
    t.string   "billing_info_approver"
    t.string   "agreement_terms"
    t.string   "agreement_included"
    t.string   "agreement_excluded"
    t.string   "invoice_due_date"
    t.string   "charges_products"
    t.datetime "charges_time"
    t.string   "charges_expenses"
    t.string   "charges_tax"
    t.string   "invoiced_sales_order"
    t.string   "invoiced_ticket_number"
    t.string   "invoiced_purchase_order"
    t.string   "commission_product"
    t.string   "commission_service"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "knowledgebases", :force => true do |t|
    t.string   "topic"
    t.string   "product"
    t.string   "software"
    t.text     "description"
    t.string   "videos"
    t.string   "screen_shots"
    t.string   "related_tickets"
    t.string   "companies"
    t.string   "author"
    t.string   "edits"
    t.string   "related_articles"
    t.text     "notes"
    t.string   "related_devices"
    t.string   "date_created"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "cost"
    t.string   "price"
    t.string   "manufacture"
    t.string   "manufacture_part"
    t.string   "serial_numbers"
    t.string   "vendor_perferred"
    t.string   "vendor_other"
    t.string   "type"
    t.string   "units"
    t.string   "tax"
    t.string   "stock_on_hand"
    t.string   "stock_location"
    t.string   "references_recent_orders"
    t.string   "references_companies_who_own"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "company"
    t.string   "approver"
    t.string   "phone"
    t.string   "project_extension"
    t.string   "site_city"
    t.string   "site_zip"
    t.string   "site_phone"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean  "status"
    t.string   "project_type"
    t.string   "project_manager"
    t.string   "budgeted_hours"
    t.string   "budgeted_expenses"
    t.text     "description"
    t.text     "notes"
    t.string   "tasks"
    t.string   "resources_name"
    t.string   "resources_role"
    t.string   "schedule"
    t.string   "products_name"
    t.string   "products_cost"
    t.string   "products_price"
    t.string   "products_purchase_order"
    t.string   "products_bin"
    t.string   "account_manager"
    t.string   "open_issues"
    t.string   "time_entry_standard"
    t.string   "time_entry_completed"
    t.string   "expenses"
    t.string   "phone_logs"
    t.text     "documents"
    t.string   "survery_results"
    t.string   "knowledgebase_articles"
    t.string   "phases"
    t.string   "billing_method_terms"
    t.string   "billing_method_approver"
    t.string   "downpayment_info_amount"
    t.string   "downpayment_info_breakdown"
    t.string   "downpayment_info_invoice"
    t.string   "downpayment_info_datepaid"
    t.string   "invoices"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "tickets", :force => true do |t|
    t.integer  "company_id"
    t.integer  "user_id"
    t.string   "phone"
    t.string   "ticket_extension"
    t.string   "email"
    t.string   "site_city"
    t.string   "site_zip"
    t.string   "site_phone"
    t.string   "agreement_project"
    t.string   "status"
    t.string   "ticket_type"
    t.string   "ticket_location"
    t.string   "source"
    t.string   "budgeted_hours"
    t.string   "priority_level"
    t.text     "description"
    t.text     "notes"
    t.string   "tasks"
    t.string   "resource"
    t.string   "schedule"
    t.string   "device"
    t.string   "despatcher"
    t.string   "account_manager"
    t.string   "open_tickets_device"
    t.integer  "open_ticket_user_id"
    t.integer  "open_ticket_company_id"
    t.string   "alerts"
    t.string   "time_entry_standard"
    t.string   "time_entry_completed"
    t.text     "phone_logs"
    t.text     "documents"
    t.string   "sales_task"
    t.string   "products_name"
    t.string   "products_price"
    t.string   "products_stocklevel"
    t.string   "expenses"
    t.string   "survey_results"
    t.string   "knowledgebase_articles"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "contact_id"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "title"
    t.string   "email",         :default => "", :null => false
    t.boolean  "email_private"
    t.string   "phone"
    t.string   "extension"
    t.string   "fax"
    t.string   "mobile"
    t.string   "home_phone"
    t.string   "company"
    t.string   "site_city"
    t.string   "site_zip"
    t.string   "site_phone"
    t.text     "notes"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

end
