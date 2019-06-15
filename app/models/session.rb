class Session < ApplicationRecord
	has_many :assignments
	has_many :attendees
	has_many :facilitators
	has_many :comments
end
