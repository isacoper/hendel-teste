class CategoryCompany < ApplicationRecord
    belongs_to :category
    belongs_to :company
end
