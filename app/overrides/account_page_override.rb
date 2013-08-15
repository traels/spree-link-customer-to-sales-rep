Deface::Override.new(
  :virtual_path => "spree/users/show",
  :name => "retail_users_on_sales_rep_accountpage",
  :insert_after => "[data-hook='account_my_orders'], #account_my_orders[data-hook]",
  :partial => "spree/users/retail_users_list",
  :disabled => false
)

