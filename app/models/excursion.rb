class Excursion < ApplicationRecord
  validates_presence_of :title, :description, :location

  has_many :taggings
  has_many :tags, through: :taggings
  has_many :favorites
  belongs_to :user

  alias_attribute :author_id, :user_id

  def self.cities
    distinct.pluck(:nearest_city)
  end
end
