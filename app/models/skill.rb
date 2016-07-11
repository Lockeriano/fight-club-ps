class Skill < ActiveRecord::Base
  has_many :fighter_skills
  has_many :fighters, through: :fighter_skills
  validates :name, presence: true, length: { maximum: 20 }
end