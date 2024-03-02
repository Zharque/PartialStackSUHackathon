class AddAttributesToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :gender, :string
    add_column :users, :birthdate, :date
    add_column :users, :field, :string
    add_column :users, :account_type, :string
  end
end
