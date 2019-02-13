class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :firstname
      t.text :lastname
      t.text :handle
      t.text :password_digest
      t.text :image
      t.text :email

      t.timestamps
    end
  end
end
