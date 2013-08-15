require 'spec_helper'

describe "User accountpage" do
  before :each do
    @sales_role = create(:role, :name => 'sales_rep')
    @retail_role = create(:role, :name => 'retail')

    @retail = create(:user)
    @retail.spree_roles = [@retail_role]
    @retail.save

    @sales = create(:user)
    @sales.spree_roles = [@sales_role]
    @sales.save

    @retail.sales_rep = @sales
    @retail.save

    @admin = create(:admin_user)
    sign_in_as!(@sales)
  end

  it "has list of retail users if user is sales_rep" do
    visit "/account"
    page.should have_link(@retail.email)
  end
end