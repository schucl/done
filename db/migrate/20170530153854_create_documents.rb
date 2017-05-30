class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.string :description
      t.string :doc_name
      t.boolean :uploaded
      t.string :category
      t.references :divorce, foreign_key: true

      t.timestamps
    end
  end
end
