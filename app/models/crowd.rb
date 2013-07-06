class Crowd < ActiveRecord::Base
  attr_accessible :description, :image, :price, :title, :user_id
  belongs_to :user
end
