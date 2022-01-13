class Lesson < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :slug, presence: true
end
