require 'rails_helper'

RSpec.describe "company_users/new", type: :view do
  before(:each) do
    assign(:company_user, CompanyUser.new(
      :name => "MyString",
      :email => "MyString",
      :password => "MyString",
      :request_change_password => false,
      :company => nil
    ))
  end

  it "renders new company_user form" do
    render

    assert_select "form[action=?][method=?]", company_users_path, "post" do

      assert_select "input[name=?]", "company_user[name]"

      assert_select "input[name=?]", "company_user[email]"

      assert_select "input[name=?]", "company_user[password]"

      assert_select "input[name=?]", "company_user[request_change_password]"

      assert_select "input[name=?]", "company_user[company_id]"
    end
  end
end
