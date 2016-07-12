class FighterSkillsController < ApplicationController

  def index
    @skills = Skill.all
  end

  def create
    @fighter = Fighter.find(params[:fighter_id])
    fighter_skill.assign_attributes(fighter_skill_params)
    puts fighter_skill.inspect
    fighter_skill.save
    puts fighter_skill.errors.inspect
    redirect_to fighter_path(@fighter)
  end

  private
    def fighter_skill_params
      params.require(:fighter_skill).permit(:skill_id, :level)
    end

    def fighter_skill
      @fighter_skill ||= existing_fighter_skill.present? ? existing_fighter_skill : new_fighter_skill
    end

    def new_fighter_skill
      fighter_skills_scope.new
    end

    def existing_fighter_skill
      @existing_fighter_skill ||= fighter_skills_scope.where(skill_id: skill_id).first
    end

    def skill_id
      params[:fighter_skill][:skill_id]
    end

    def fighter_skills_scope
      @fighter.fighter_skills
    end
end
