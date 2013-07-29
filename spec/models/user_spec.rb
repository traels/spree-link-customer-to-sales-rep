require 'spec_helper'

describe Spree::User do
  before :each do
    @sales_rep = create(:user)
    @cust1 = create(:user)
    @cust2 = create(:user)

    @cust1.sales_rep = @sales_rep
    @cust1.save
    @cust2.sales_rep = @sales_rep
    @cust2.save
  end

  it "has many customers attaced to sales_rep" do
    @sales_rep.customers.count.should == 2
  end

  it "belongs to one sales_rep" do
    @cust1.sales_rep.should == @sales_rep
  end
end