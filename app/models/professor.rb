class Professor < ApplicationRecord
	has_many :subjects, through: :professor_subjects
	has_many :professor_subjects, dependent: :destroy
end
