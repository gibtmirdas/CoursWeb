class StaticPagesController < ApplicationController
  def home
	  @patient = Patient.new
  end
end
