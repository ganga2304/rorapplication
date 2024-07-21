class Course < ApplicationRecord
    has_many :lessons
    validates :name,presence: true,length: {minimum: 2,maximum: 50}
    validates :description,presence: true,length: {minimum: 2,maximum: 100}
    validates :price,presence: true,length: {minimum: 2,maximum: 100}
end