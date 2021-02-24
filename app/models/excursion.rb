class Excursion < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :location

  has_many :taggings
  has_many :tags, through: :taggings
  has_many :favorites
  validates_presence_of :title
  belongs_to :user

  alias_attribute :author_id, :user_id
end