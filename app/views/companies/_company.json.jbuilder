json.extract! company, :id, :company_name, :fantasy_name, :email, :status, :created_at, :updated_at
json.url company_url(company, format: :json)
