class FighterSkill < ApplicationRecord
	belongs_to :fighter
  belongs_to :skill
  validates :fighter_id, presence: true
  validates :level, presence: true, numericality: { only_integer: true,
                                    greater_than_or_equal_to: 0,
                                    less_than_or_equal_to: 5 }

  delegate :name, to: :skill

  private

	  def skills_quantity
		  fighter = Fighter.find(fighter_id)
		  skills_quantity = fighter.skills.count
	  	if skills_quantity >= 9
		    errors.add(:skills_quantity, "can't be more than 9")
	   	end
	  end
end

