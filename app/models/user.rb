class User < ApplicationRecord
  validates :id, presence: true

  has_many :favorites, dependent: :destroy
  has_many :excursions, dependent: :destroy
end
