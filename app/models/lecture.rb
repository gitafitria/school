class Lecture < ApplicationRecord
  validates :name,  :description, presence: true

end
