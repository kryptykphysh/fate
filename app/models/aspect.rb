# == Schema Information
#
# Table name: aspects
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Aspect < ActiveRecord::Base
  attr_accessible :title

  has_many :aspect_links, :dependent => :destroy
  has_many :stories, :through => :aspect_links, :source => :aspected, :source_type => 'Story'
  has_many :characters, :through => :aspect_links, :source => :aspected, :source_type => 'Character'
  accepts_nested_attributes_for :aspect_links

  default_scope order('title ASC')

  validates :title, :presence => true, :length => { :minimum => 3, :maximum => 255 }
end
