class Document < ApplicationRecord
  belongs_to :divorce
  validates :category, acceptance: { accept: ["Civil", "Revenue", "Dépense"]}
end
