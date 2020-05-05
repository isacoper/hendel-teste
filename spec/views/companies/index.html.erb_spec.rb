require 'rails_helper'

RSpec.describe "companies/index", type: :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        :company_name => "Company Name",
        :fantasy_name => "Fantasy Name",
        :email => "Email",
        :status => "Status"
      ),
      Company.create!(
        :company_name => "Company Name",
        :fantasy_name => "Fantasy Name",
        :email => "Email",
        :status => "Status"
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Fantasy Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
