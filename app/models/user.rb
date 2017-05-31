class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :documents, through: :divorces
  has_many :divorces
  # has_many :logements
  #   validates :gender, acceptance: { accept: ["Homme", "Femme"] }
  #   validates :children_number, acceptance: { accept: [1..15] }
  #   validates :status_pro, acceptance: { accept: ["Salarié", "Chef d'entreprise", "Sans Emploi", "Libéral"] }
  #   validates :account_number, acceptance: { accept: [1..10] }

end
