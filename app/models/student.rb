class Student < ApplicationRecord
    validates :firstname, :lastname, :age,  :education, presence: true 
    validates :age, numericality: { less_than: 150, message: "must be less than 150"}
    validates :education, inclusion: { 
                    in: %w(hs college masters phd), 
                    message: "%{value} is not a valid size" }
    has_many :student_cohorts
    has_many :cohorts, :through => :student_cohorts
end
