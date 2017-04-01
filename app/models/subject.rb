class Subject < ApplicationRecord
	has_many :professors,through: :professor_subjects
	has_many :professor_subjects,dependent: :destroy
end
