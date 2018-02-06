class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :password_digest
      t.boolean :admin, default: false
      t.date :birthday
      t.boolean :male
      t.string :avatar

      t.timestamps
    end
  end
end
