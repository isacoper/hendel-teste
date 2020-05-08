class RemoveFieldsFromCompanyUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :company_users, :email, :string
    remove_column :company_users, :password, :string
  end
end
