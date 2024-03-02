class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :address
      t.string :password
      t.string :user_type
      t.string :field

      t.timestamps
    end
  end
end
