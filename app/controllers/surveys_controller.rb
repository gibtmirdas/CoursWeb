class SurveysController < ApplicationController
	before_action :set_survey, only: [:show, :edit, :update, :destroy]

	# GET /surveys
	# GET /surveys.json
	def index
		@surveys = Survey.all
	end

	# GET /surveys/1
	# GET /surveys/1.json
	def show
	end

	# GET /surveys/new
	def new
		@survey = Survey.new
		@survey.patient_id = params[:patient_id]
		@questions = IntroductionQuestion.all
	end

	# GET /surveys/1/edit
	def edit
	end

	# POST /surveys
	# POST /surveys.json
	def create
		patient_id = params[:patient_id]
		@survey = Survey.new(survey_params)
		patientTmp = Patient.find(patient_id)
		@survey.patient = patientTmp
		@survey.patient_id= patientTmp.id

		@questions = IntroductionQuestion.all

		respond_to do |format|
			if @survey.save
				format.html { redirect_to @survey, notice: 'Survey was successfully created.' }
				format.json { render action: 'show', status: :created, location: @survey }
			else
				format.html { render action: 'new' }
				format.json { render json: @survey.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /surveys/1
	# PATCH/PUT /surveys/1.json
	def update
		respond_to do |format|
			if @survey.update(survey_params)
				format.html { redirect_to @survey, notice: 'Survey was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
				format.json { render json: @survey.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /surveys/1
	# DELETE /surveys/1.json
	def destroy
		@survey.destroy
		respond_to do |format|
			format.html { redirect_to surveys_url }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_survey
		@survey = Survey.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def survey_params
		params.require(:survey).permit(:patient_id,:q1,:q2,:q3,:q3a,:q4,:q5,:q6,:q7,:q8,:q8a,:q8b,
		                               :q8c,:q8d,:q8e,:q8f,:q8g,:q8h,:q8i,:q8j,:q8k,
		                               :q8l,:q9,:q10,:q11,:q12,:q13,:q14)
	end
end
