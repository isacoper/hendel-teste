require 'rails_helper'

RSpec.describe "company_users/show", type: :view do
  before(:each) do
    @company_user = assign(:company_user, CompanyUser.create!(
      :name => "Name",
      :email => "Email",
      :password => "Password",
      :request_change_password => false,
      :company => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
