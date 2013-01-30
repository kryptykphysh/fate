class Story < ActiveRecord::Base
  attr_accessible :title

  default_scope order('title ASC')

  has_many :characters
  has_many :aspect_links, :as => :aspected
  has_many :aspects, :through => :aspect_links

  validates :title, presence: true
end
