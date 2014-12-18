class Strategy < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :categories
end
