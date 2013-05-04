class Inventory < ActiveRecord::Base
  attr_accessible :inventory_type, :manufacture, :manufacture_part, :product, :references_companies_who_own, :references_purchase_orders, :references_rmas, :references_sales_orders, :stock_location, :stock_on_hand, :tax, :units, :vendor_other, :vendor_perferred
end
