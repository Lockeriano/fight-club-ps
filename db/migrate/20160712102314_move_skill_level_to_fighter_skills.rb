class MoveSkillLevelToFighterSkills < ActiveRecord::Migration[5.0]
  def change
    remove_column :skills, :level
    add_column :fighter_skills, :level, :integer
  end
end
