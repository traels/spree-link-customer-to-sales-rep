Deface::Override.new(:virtual_path => "spree/admin/users/_form", 
                     :name => "add_sales_rep_dropdown", 
                     :insert_after => "div[data-hook='admin_user_form_roles']",
                     :partial => "spree/admin/users/sales_rep")