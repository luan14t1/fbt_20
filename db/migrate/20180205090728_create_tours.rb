class CreateTours < ActiveRecord::Migration[5.1]
  def change
    create_table :tours do |t|
      t.string :title
      t.string :description
      t.string :image
      t.integer :number_user
      t.date :start_date
      t.date :end_date
      t.float :price
      t.float :rating
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
