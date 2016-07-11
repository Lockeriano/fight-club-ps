class Fighter < ApplicationRecord
	validates :first_name, presence: true
	validates :last_name, presence: true
	has_many :fighter_skills
	has_many :skills, through: :fighter_skills
end
