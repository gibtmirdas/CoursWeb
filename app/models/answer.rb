class Answer < ActiveRecord::Base

	# Validates
	validates :introduction_question, presence: true
	validates :personne_id, presence: true
	validates_uniqueness_of :personne_id, :scope => [:introduction_question]
	# Relations
	belongs_to :personne
	belongs_to :introduction_question
end
