class Divorce < ApplicationRecord
  belongs_to :user
  has_many :documents
  validates :separation_type, acceptance: { accept: ["Mariage", "PACS", "Union Libre"]}
end
