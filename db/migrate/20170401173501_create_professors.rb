class CreateProfessors < ActiveRecord::Migration[5.0]
  def change
    create_table :professors do |t|
      t.string :fullname
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :like
      t.integer :dislike
      t.float :grade
      t.string :school
      t.text :biography
      t.text :interests
      t.float :help
      t.float :clarity

      t.timestamps
    end
  end
end
