class Story < ActiveRecord::Base
  attr_accessible :title

  default_scope order('title ASC')

  validates :title, presence: true
end
