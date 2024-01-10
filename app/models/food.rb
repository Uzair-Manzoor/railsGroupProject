class Food < ApplicationRecord
  belongs_to :user
  has_many :recipeFoods

  validates :name, presence: true
end
