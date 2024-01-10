class Recipe < ApplicationRecord
belongs_to :user
has_many :recipeFoods

validates :name, presence: true
# validates :is_public, inclusion: {in: [true, false]}
validates :description, presence: true, length: {minimum: 10, maximum: 500}
end