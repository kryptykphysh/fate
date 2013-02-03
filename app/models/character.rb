# == Schema Information
#
# Table name: characters
#
#  id               :integer          not null, primary key
#  story_id         :integer
#  name             :string(255)
#  physical_stress  :integer
#  mental_stress    :integer
#  description      :text
#  refresh          :integer
#  character_idea   :text
#  phase_trio_one   :text
#  phase_trio_two   :text
#  phase_trio_three :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Character < ActiveRecord::Base
  attr_accessible :character_idea, :description, :mental_stress, :name, :phase_trio_one, 
    :phase_trio_three, :phase_trio_two, :physical_stress, :refresh, :story_id

  belongs_to :story
  has_many :aspect_links, :as => :aspected, :dependent => :destroy
  has_many :aspects, :through => :aspect_links

  default_scope order('name ASC')
end
