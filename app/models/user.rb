class User < ApplicationRecord
  validates_presence_of :id
  
  has_many :favorites
  has_many :excursions
end