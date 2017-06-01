class AddAttachmentToDocument < ActiveRecord::Migration[5.1]
  def change
    add_column :documents, :attachment, :string
  end
end
