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
		@patient = Patient.find(params[:idPatient])
		@answers = params[:patient][:answers_attributes]
		count = 1
		@answers.each do |a|
			tmp = Answer.where(:personne_id => params[:idPatient], :introduction_question_id => count).first
			# Get presence and response
			presence_tmp = a[1][:presence]
			response_tmp = ''
			if a[1].has_key?('response') && a[1][:response] != ''
				presence_tmp = true
				response_tmp = a[1][:response]
			end

			tmp.update_attributes(:presence => presence_tmp, :response=> response_tmp)
			count += 1

		end
		#answers = params[:patient][:answers_attributes]
		#answers.each do |a|
		#	answerTmp = a[1]
		#	truk = answerTmp[:id]
		#	#ans.find_or_create_by
		#	#ans.update_attributes answers_attributes: {:introduction_question_id=>'1', :presence=> 1, :response=> 'blabla'}
		#end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_answer
		#@answer = Survey.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def answer_params
		params.require(:patient).permit(answers_attributes: [:presence, :response, :id,:personne_id, :_destroy])
	end

	def date_from_date_select_fields(params, name)
		parts = (1..6).map do |e|
			params["#{name}(#{e}i)"].to_i
		end

		# remove trailing zeros
		parts = parts.slice(0, parts.rindex{|e| e != 0}.to_i + 1)
		return nil if parts[0] == 0  # empty date fields set

		Date.new(*parts)
	end
end
