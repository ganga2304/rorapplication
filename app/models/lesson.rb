class Lesson < ApplicationRecord
    belongs_to :course
    validates :title,presence: true,uniqueness: true,confirmation: { case_sensitive: false },length: {minimum: 2,maximum: 50}
    validates :content,presence: true,length: {minimum: 2,maximum: 100}
end