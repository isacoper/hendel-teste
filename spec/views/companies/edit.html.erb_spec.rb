require 'rails_helper'

RSpec.describe "companies/edit", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :company_name => "MyString",
      :fantasy_name => "MyString",
      :email => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input[name=?]", "company[company_name]"

      assert_select "input[name=?]", "company[fantasy_name]"

      assert_select "input[name=?]", "company[email]"

      assert_select "input[name=?]", "company[status]"
    end
  end
end
