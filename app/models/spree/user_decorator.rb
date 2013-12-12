Spree::User.class_eval do
#  attr_accessible :sales_rep_id
  has_many :customers, :class_name => "Spree::User", :foreign_key => "sales_rep_id"
  belongs_to :sales_rep, :class_name => "Spree::User"
end