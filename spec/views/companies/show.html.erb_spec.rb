require 'rails_helper'

RSpec.describe "companies/show", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :company_name => "Company Name",
      :fantasy_name => "Fantasy Name",
      :email => "Email",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Fantasy Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Status/)
  end
end
