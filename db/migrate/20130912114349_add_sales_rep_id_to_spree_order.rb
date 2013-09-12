class AddSalesRepIdToSpreeOrder < ActiveRecord::Migration
  def change
    add_column :spree_orders, :sales_rep_id, :integer
  end
end
