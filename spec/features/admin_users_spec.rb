require 'spec_helper'

describe "User administration" do
  before :each do
    @sales_role = create(:role, :name => 'sales_rep')
    @retail_role = create(:role, :name => 'retail')

    @retail = create(:user)
    @retail.spree_roles = [@retail_role]
    @retail.save

    @admin = create(:admin_user)
    sign_in_admin!(@admin)
  end

  it "has a sales rep dropdown on user editform" do
    visit "/admin/users/#{@retail.id}/edit"
    find_field('user_sales_rep_id').should be
  end

  it "only shows sales reps in dropdown on user editform" do
    @sales = create(:user)
    @sales.spree_roles = [@sales_role]
    @sales.save

    visit "/admin/users/#{@retail.id}/edit"

    page.should have_xpath "//select[@id = 'user_sales_rep_id']/option[@value = '#{@sales.id}']"
    page.should_not have_xpath "//select[@id = 'user_sales_rep_id']/option[@value = '#{@retail.id}']"
    page.should_not have_xpath "//select[@id = 'user_sales_rep_id']/option[@value = '#{@admin.id}']"
  end

  it "can attach a sales rep to a user" do
    @sales = create(:user)
    @sales.spree_roles = [@sales_role]
    @sales.save

    visit "/admin/users/#{@retail.id}/edit"
    select @sales.email, :from => "user_sales_rep_id"
    click_button "Update"

    find_field('user_sales_rep_id').find('option[selected]').text.should == @sales.email
  end
end