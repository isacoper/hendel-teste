class Category < ApplicationRecord
    validates :name, presence: true
    has_many :category_companies, dependent: :destroy
    has_many :companies, through: :category_companies
end
