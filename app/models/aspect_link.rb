class AspectLink < ActiveRecord::Base
  attr_accessible :aspected_id, :aspected_type, :note, :aspect_id

  belongs_to :aspected, :polymorphic => true
  belongs_to :aspect
end
