class AddSalesRepToSpreeUser < ActiveRecord::Migration
  def change
    add_column :spree_users, :sales_rep_id, :integer
  end
end
