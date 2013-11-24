class Personne < ActiveRecord::Base
	# validates and formats
	validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

	# Relations
	has_many :answers , dependent: :destroy
	accepts_nested_attributes_for :answers
end
