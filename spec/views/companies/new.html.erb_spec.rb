require 'rails_helper'

RSpec.describe "companies/new", type: :view do
  before(:each) do
    assign(:company, Company.new(
      :company_name => "MyString",
      :fantasy_name => "MyString",
      :email => "MyString",
      :status => "MyString"
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input[name=?]", "company[company_name]"

      assert_select "input[name=?]", "company[fantasy_name]"

      assert_select "input[name=?]", "company[email]"

      assert_select "input[name=?]", "company[status]"
    end
  end
end
