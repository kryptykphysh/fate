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

class AspectLink < ActiveRecord::Base
  attr_accessible :aspected_id, :aspected_type, :note, :aspect_id, :type

  belongs_to :aspected, :polymorphic => true
  belongs_to :aspect
  accepts_nested_attributes_for :aspect
end
