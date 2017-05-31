class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :gender, :string
    add_column :users, :child_nb, :integer
    add_column :users, :property_nb, :integer
    add_column :users, :status_pro, :string
    add_column :users, :bank_account_nb, :integer
    add_column :users, :credit_nb, :integer
    add_column :users, :insurance_nb, :integer
    add_column :users, :vehicle_nb, :integer
  end
end
