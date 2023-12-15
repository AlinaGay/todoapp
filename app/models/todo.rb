class Todo < ApplicationRecord
  validates :name, presence: true
  validates :descriptions, presence: true
end