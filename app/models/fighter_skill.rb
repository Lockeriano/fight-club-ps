class FighterSkill < ApplicationRecord
	belongs_to :fighter
  belongs_to :skill
  validates :fighter_id, presence: true
  validates :level, presence: true, numericality: { only_integer: true,
                                    greater_than_or_equal_to: 0,
                                    less_than_or_equal_to: 5 }
  FighterSkill.joins(:skills).where(skills: { name: "Agility" }.first)
end
