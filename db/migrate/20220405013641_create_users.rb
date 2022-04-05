class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :height
      t.string :postal_code
      t.string :password
      t.string :place
      t.string :email

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
