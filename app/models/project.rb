class Project < ActiveRecord::Base
  attr_accessible :account_manager, :approver, :billing_method_approver, :billing_method_terms, :budgeted_expenses, :budgeted_hours, :company, :description, :documents, :downpayment_info_amount, :downpayment_info_breakdown, :downpayment_info_datepaid, :downpayment_info_invoice, :end_date, :expenses, :invoices, :knowledgebase_articles, :notes, :open_issues, :phases, :phone, :phone_logs, :products_bin, :products_cost, :products_name, :products_price, :products_purchase_order, :project_extension, :project_manager, :project_type, :resources_name, :resources_role, :schedule, :site_city, :site_phone, :site_zip, :start_date, :status, :survery_results, :tasks, :time_entry_completed, :time_entry_standard
end
