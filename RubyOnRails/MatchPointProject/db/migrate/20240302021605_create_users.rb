class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.date :birthdate
      t.text :address
      t.text :skills
      t.text :expertise
      t.string :user_type

      t.timestamps
    end
  end
end
