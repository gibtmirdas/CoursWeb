class IntroductionQuestion < ActiveRecord::Base


	# Relations
	has_many :answers
	has_one :format_question
	accepts_nested_attributes_for :answers, :format_question
end
