Spree::Order.class_eval do
  belongs_to :sales_rep, :class_name => "Spree::User"

  alias_method :orig_finalize!,  :finalize! unless method_defined? :orig_finalize!
  def finalize!
    sales_rep = user.sales_rep unless user.nil? or user.sales_rep.nil?
    save
    orig_finalize!
  end
end