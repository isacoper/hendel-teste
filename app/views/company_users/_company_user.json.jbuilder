json.extract! company_user, :id, :name, :email, :password, :request_change_password, :company_id, :created_at, :updated_at
json.url company_user_url(company_user, format: :json)
