class Character < ActiveRecord::Base
  attr_accessible :character_idea, :description, :mental_stress, :name, :phase_trio_one, :phase_trio_three, :phase_trio_two, :physical_stress, :refresh, :story_id

  belongs_to :story
end
