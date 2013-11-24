class AnswersController < ApplicationController
	before_action :set_answer, only: [:show, :edit, :update, :destroy]

	# GET /answers
	# GET /answers.json
	def index
		@answers = Answer.all
	end

	# GET /answers/1
	# GET /answers/1.json
	def show
	end

	# GET /answers/new
	def new
		@patient = Personne.find(params[:personne_id])
		if Answer.where(:personne_id => params[:personne_id]).empty?
			questions = IntroductionQuestion.all
			answers = Array.new(questions.size){@patient.answers.build}
			count = 0
			answers.each do |a|
				questions[count].answers << a
				count += 1
			end
		end

	end

	# GET /answers/1/edit
	def edit
	end

	# POST /answers
	# POST /answers.json
	def create

		respond_to do |format|
			if @answer.save
				format.html { redirect_to @answer, notice: 'Survey was successfully created.' }
				format.json { render action: 'show', status: :created, location: @answer }
			else
				format.html { render action: 'new' }
				format.json { render json: @answer.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /answers/1
	# PATCH/PUT /answers/1.json
	def update
		respond_to do |format|
			if @answer.update(answer_params)
				format.html { redirect_to @answer, notice: 'Survey was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
				format.json { render json: @answer.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /answers/1
	# DELETE /answers/1.json
	def destroy
		#@answer.destroy
		#respond_to do |format|
		#	format.html { redirect_to answers_url }
		#	format.json { head :no_content }
		#end

	end

	def add_survey
		patientNew = Patient.new(answer_params);
		patient = Patient.find(params[:idPatient])
		patientNew.answers.each do |a|
			var = Answer.where(:personne_id => a.id)
			var.update_attributes(:presence => 'true', :response => 'blabla')
		end
		@f = params[:idPatient]
		@p = 5
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_answer
		#@answer = Survey.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def answer_params
			params.require(:patient).permit(:familyName, :maiderName, :firstName, :dateOfBirth, :email, :nationality,
			                                :civilStatus, :address, :city, :zipCode, :co, :privatePhone, :profPhone,
			                                :illnessInsurance, :additionnalInsurance, :referedBy, :legalCaregiver,
			                                :trade, :employer, :employerAddress, :sex, :answer)
	end
end
