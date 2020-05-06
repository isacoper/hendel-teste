require 'rails_helper'

RSpec.describe "company_users/index", type: :view do
  before(:each) do
    assign(:company_users, [
      CompanyUser.create!(
        :name => "Name",
        :email => "Email",
        :password => "Password",
        :request_change_password => false,
        :company => nil
      ),
      CompanyUser.create!(
        :name => "Name",
        :email => "Email",
        :password => "Password",
        :request_change_password => false,
        :company => nil
      )
    ])
  end

  it "renders a list of company_users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
