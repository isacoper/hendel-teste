class Company < ApplicationRecord
    validates :company_name, :fantasy_name, presence: true
    validates :email, presence: true, email: true

    has_many :category_companies, dependent: :destroy
    has_many :categories, through: :category_companies
    accepts_nested_attributes_for :category_companies, allow_destroy: true

end
