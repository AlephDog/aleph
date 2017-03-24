class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :username
      t.boolean :admin
      t.boolean :professor
      t.string :email
      t.string :password_digest
      t.text :description
      t.string :school
      t.text :interests

      t.timestamps
    end
  end
end
