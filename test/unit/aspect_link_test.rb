# == Schema Information
#
# Table name: aspect_links
#
#  id            :integer          not null, primary key
#  aspected_id   :integer
#  aspected_type :string(255)
#  aspect_id     :integer
#  note          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  type          :string(255)
#

require 'test_helper'

class AspectLinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
