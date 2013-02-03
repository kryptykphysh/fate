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

require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
