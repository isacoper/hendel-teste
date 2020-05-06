require 'rails_helper'

RSpec.describe "company_users/edit", type: :view do
  before(:each) do
    @company_user = assign(:company_user, CompanyUser.create!(
      :name => "MyString",
      :email => "MyString",
      :password => "MyString",
      :request_change_password => false,
      :company => nil
    ))
  end

  it "renders the edit company_user form" do
    render

    assert_select "form[action=?][method=?]", company_user_path(@company_user), "post" do

      assert_select "input[name=?]", "company_user[name]"

      assert_select "input[name=?]", "company_user[email]"

      assert_select "input[name=?]", "company_user[password]"

      assert_select "input[name=?]", "company_user[request_change_password]"

      assert_select "input[name=?]", "company_user[company_id]"
    end
  end
end
