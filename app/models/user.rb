class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :documents, through: :divorces
  has_one :divorce
  # has_many :logements
    validates :gender, presence: true, acceptance: { accept: ["Homme", "Femme"] }
    validates :child_nb, presence: true, acceptance: { accept: [1..15] }
    validates :status_pro, acceptance: { accept: ["Salarié", "Chef d'entreprise", "Sans Emploi", "Libéral"] }
    validates :bank_account_nb, presence: true, acceptance: { accept: [1..10] }
    validates :email, :property_nb, :status_pro, :credit_nb, :insurance_nb, :vehicle_nb, :first_name, :last_name, :amiable, :contract_type, :statut_pro_conjoint, :mariage_contract, :presence true

end





