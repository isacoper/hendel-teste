class Company < ApplicationRecord
    validates :company_name, :fantasy_name, presence: true
    validates :email, presence: true, email: true

end
