class Story < ActiveRecord::Base
  attr_accessible :title

  default_scope order('title ASC')

  has_many :characters

  validates :title, presence: true
end
