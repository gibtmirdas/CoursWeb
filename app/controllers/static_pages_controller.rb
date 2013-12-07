class StaticPagesController < ApplicationController
  def home
	  @personne = Patient.new
	  @personne.type = 'Patient'
  end
end
