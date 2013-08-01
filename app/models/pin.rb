class Pin < ActiveRecord::Base
  attr_accessible :description, :image

  validates :description, presence: true
  
  validates_attachment :image, presence: true,

  belongs_to :user
  validates :user_id, presence: true 
end
