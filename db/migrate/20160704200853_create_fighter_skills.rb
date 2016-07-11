class CreateFighterSkills < ActiveRecord::Migration[5.0]
	def change
	  create_table :fighter_skills do |t|
	    t.references :fighter, index: true
	    t.references :skill, index: true
	  end
	end
end
