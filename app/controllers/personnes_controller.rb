class PersonnesController < ApplicationController
	before_action :set_personne, only: [:show, :edit, :update, :destroy]

	# GET /personnes
	# GET /personnes.json
	def index
		case params[:type]
			when 'Staff'
				@personnes = Staff.all
			when 'Patient'
				@personnes = Patient.all
			when 'Personne'
				@personnes = Personne.all
		end
	end

	# GET /personnes/1
	# GET /personnes/1.json
	def show
	end

	# GET /personnes/new
	def new
		if params[:patient] != nil
			@personne = Patient.new(personne_params)
		else
			case params[:type]
				when 'Staff'
					@personne = Staff.new
				when 'Patient'
					@personne = Patient.new
				when 'Personne'
					@personne = Personne.new
			end
			@personne.type = params[:type]
		end
	end

	# GET /personnes/1/edit
	def edit
	end


	def create
		if params[:patient] != nil
			@personne = Patient.new(personne_params)
		elsif params[:staff] != nil
			@personne = Staff.new(personne_params)
		elsif params[:personne] != nil
			@personne = Personne.new(personne_params)
		end

		respond_to do |format|
			if @personne.save
				if @personne.instance_of?(Patient)
					format.html { redirect_to :controller => 'answers',:action => 'new',:personne_id => @personne.id, notice: 'Personne was successfully created.'}
					format.json { render action: 'show', status: :created, location: @personne }
				else
					format.html { redirect_to @personne, notice: 'Personne was successfully created.'}
					format.json { render action: 'show', status: :created, location: @personne }
				end
			else
				format.html { render action: 'new' }
				format.json { render json: @personne.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /personnes/1
	# PATCH/PUT /personnes/1.json
	def update
		respond_to do |format|
			if @personne.update(personne_params)
				format.html { redirect_to @personne, notice: 'Personne was successfully updated.'}
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
				format.json { render json: @personne.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /personnes/1
	# DELETE /personnes/1.json
	def destroy
		@personne.destroy
		respond_to do |format|
			format.html { redirect_to personnes_url }
			format.json { head :no_content }
		end
	end

	def find
		@personnes = Personne.all
	end

	### Survey for Patient ###
	def create_survey
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

	def save_survey
		redirect_to @personne, notice: 'Survey was successfully created.'
	end

	def auto_complete_for_familyName
		@noms = Personne.find_by_familyName(params[:familyName])
		render :partial => 'auto_complete'
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_personne
		@personne = Personne.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def personne_params
		if params[:patient] != nil
			params.require(:patient).permit(:familyName, :maiderName, :firstName, :dateOfBirth, :email, :nationality,
			                                :civilStatus, :address, :city, :zipCode, :co, :privatePhone, :profPhone,
			                                :illnessInsurance, :additionnalInsurance, :referedBy, :legalCaregiver,
			                                :trade, :employer, :employerAddress, :sex,answers_attributes: [:presence, :response, :id, :_destroy])
		elsif params[:staff] != nil
			params.require(:staff).permit(:familyName, :maiderName, :firstName, :dateOfBirth, :email, :nationality,
			                              :civilStatus, :address, :city, :zipCode, :co, :privatePhone, :profPhone,
			                              :illnessInsurance, :additionnalInsurance, :sex,answers_attributes: [:presence, :response, :id, :_destroy])
		elsif params[:personne] != nil
			params.require(:personne).permit(:familyName, :maiderName, :firstName, :dateOfBirth, :email, :nationality,
			                                 :civilStatus, :address, :city, :zipCode, :co, :privatePhone, :profPhone,
			                                 :illnessInsurance, :additionnalInsurance, :sex,answers_attributes: [:presence, :response, :id, :_destroy])
		end

	end
end
