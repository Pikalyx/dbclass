class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
