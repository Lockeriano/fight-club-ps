class SkillTest < ActiveSupport::TestCase
     @skill.level = 6
     assert_not @skill.valid?
  end

	test 'should be unique for given fighter' do
		puts @fighter.skills.create(name: "Smite", level: 2)
		assert_not @skill.valid?
	end
end