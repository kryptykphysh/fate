class Character < ActiveRecord::Base
  attr_accessible :character_idea, :description, :mental_stress, :name, :phase_trio_one, :phase_trio_three, :phase_trio_two, :physical_stress, :refresh, :story_id

  belongs_to :story
  has_many :aspect_links, :as => :aspected
  has_many :aspects, :through => :aspect_links

  default_scope order('name ASC')
end
