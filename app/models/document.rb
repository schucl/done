class Document < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  belongs_to :divorce
  validates :category, acceptance: { accept: ["Civil", "Revenue", "Dépense"]}
end
