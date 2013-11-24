class FormatQuestion < ActiveRecord::Base

	validates :introduction_question_id, presence: true, uniqueness: true
	belongs_to :introduction_question
end
