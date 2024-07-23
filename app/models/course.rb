class Course < ApplicationRecord
    before_save :change_coursename
    after_save :log_save 
    has_many :lessons
    belongs_to :user
    validates :name,presence: true,length: {minimum: 2,maximum: 50}
    validates :description,presence: true,length: {minimum: 2,maximum: 100}
    validates :price,presence: true,length: {minimum: 2,maximum: 100}

    def change_coursename
        self.name = self.name.downcase if name.present?
    end

    def log_save
        Rails.logger.info "Course #{self.name} was saved"
    end
end