class CreateDivorces < ActiveRecord::Migration[5.1]
  def change
    create_table :divorces do |t|
      t.string :separation_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
