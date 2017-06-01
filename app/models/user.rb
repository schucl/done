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
    validates :email, presence: true
    validates :property_nb, presence: true
    validates :status_pro, presence: true
    validates :credit_nb, presence: true
    validates :insurance_nb, presence: true
    validates :vehicle_nb, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :amiable, presence: true
    validates :contract_type, presence: true
    validates :statut_pro_conjoint, presence: true
    validates :mariage_contract, presence: true


end


