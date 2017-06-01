class Divorce < ApplicationRecord
  belongs_to :user
  has_many :documents, dependent: :destroy
  validates :separation_type, presence: true, acceptance: { accept: ["Mariage", "PACS", "Union Libre"]}
end
