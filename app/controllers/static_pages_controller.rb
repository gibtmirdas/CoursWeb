class StaticPagesController < ApplicationController
    def home
        @personne = Patient.new
        @personne.type = 'Patient'
        if params[:search]
            if params[:search]!=""
                @patients = Patient.search(params[:search]).paginate(:per_page => 10, :page => params[:page])
            else
                @patients = nil
            end
        else
            @patients = nil
        end
    end
end
