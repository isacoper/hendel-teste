class Company < ApplicationRecord
    validates :company_name, :fantasy_name, presence: true
    validates :email, presence: true, email: true
    validates :category_companies, nested_attributes_uniqueness: { field: :category_id }

    has_many :category_companies, dependent: :destroy
    has_many :categories, through: :category_companies
    accepts_nested_attributes_for :category_companies, allow_destroy: true
    has_many :company_users, dependent: :destroy 

end
