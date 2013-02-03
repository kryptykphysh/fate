# == Schema Information
#
# Table name: stories
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Story < ActiveRecord::Base
  attr_accessible :title

  default_scope order('title ASC')

  has_many :characters
  has_many :aspect_links, :as => :aspected, :dependent => :destroy
  has_many :aspects, :through => :aspect_links

  validates :title, presence: true, :length => { :minimum => 3, :maximum => 120 }
end
