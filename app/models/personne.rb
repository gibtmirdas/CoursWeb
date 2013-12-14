class Personne < ActiveRecord::Base
	# validates and formats
	validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

	# Relations
	has_many :answers , dependent: :destroy
	accepts_nested_attributes_for :answers

	def self.search(search)
		if  search != nil
			query = ''
			array = search.split('####')
			first = true, print = true
			array.each do |a|
				print = true
				couple = a.split('----')
				if couple.count > 1
					key = couple[0]
					value = "#{couple[1]}"
					# Invert order to match Universal Date Notation
					if key == 'dateOfBirth'
						#if /[[\d_]{2}\/]{2}[[\d_]{4}]/ =~ value
							value = value.split("/").reverse.join("-")
						#end
						if !value[/\d/]
							print = false
						end
					end
					if print
						if !first
							query = query+'AND '
						end
						query = query+key+" LIKE '%#{value}%' "
						first = false
					end
				end
			end
			where(query)
		else
			all
		end
	end
end
