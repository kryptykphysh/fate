class Aspect < ActiveRecord::Base
  attr_accessible :title, :type

  has_many :aspect_links, :dependent => :destroy
  has_many :stories, :through => :aspect_links, :source => :aspected, :source_type => 'Story'
  has_many :characters, :through => :aspect_links, :source => :aspected, :source_type => 'Character'
end
