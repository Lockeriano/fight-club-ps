class Skill < ActiveRecord::Base
  has_many :fighter_skills
  has_many :fighters, through: :fighter_skills
  validates :name, presence: true, length: { maximum: 20 }
  validate :validate_fighter_skill_uniqueness

  private

	  def skills_quantity
		  fighter = Fighter.find(fighter_id)
		  skills_quantity = fighter.skills.count
	  	if skills_quantity >= 9
		    errors.add(:skills_quantity, "can't be more than 9")
	   	end
	  end

	  def validate_fighter_skill_uniqueness
	    if fighter.skills.where(name: name).present?
	      self.errors.add(:name, 'there is already skill with given name for given fighter')
	    end
	  end
end