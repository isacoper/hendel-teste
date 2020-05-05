class CreateCategoryCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :category_companies do |t|
      t.references :category, index: true, foreign_key: true
      t.references :company, index: true, foreign_key: true
      t.timestamps
    end
  end
end
