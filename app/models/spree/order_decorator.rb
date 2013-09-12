Spree::Order.class_eval do
  belongs_to :sales_rep, :class_name => "Spree::User"

  alias_method :orig_finalize!,  :finalize! unless method_defined? :orig_finalize!
  def finalize!
    self.sales_rep = self.user.sales_rep unless self.user.nil? or self.user.sales_rep.nil?
    self.save
    orig_finalize!
  end
end