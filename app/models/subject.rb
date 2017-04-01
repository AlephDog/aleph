class Subject < ApplicationRecord
	has_many :professors,through: :proffesor_subjects
end
