class CompanyUser < ApplicationRecord
  belongs_to :company, optional: true
end
