class AddAmiableCoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :amiable, :boolean
    add_column :users, :contract_type, :string
    add_column :users, :statut_pro_conjoint, :string
    add_column :users, :mariage_contract, :boolean
  end
end
