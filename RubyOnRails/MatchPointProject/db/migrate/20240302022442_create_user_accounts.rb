class CreateUserAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :user_accounts do |t|
      t.string :name
      t.string :email
      t.string :password
      t.date :birthdate
      t.text :address
      t.text :skills
      t.text :expertise
      t.string :user_type

      t.timestamps
    end
  end
end
