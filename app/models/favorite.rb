class Favorite < ActiveRecord::Base
  belongs_to :user
  has_many :strategies, through: :users
end
