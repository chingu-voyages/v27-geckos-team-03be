class PrescriptionsController < ApplicationController
    def index 
        prescriptions = Prescription.all 
        render json: prescriptions
    end 

    def show 
        
    end

    def create 

    end 

    def update 

    end 

    def destroy 

    end 

    private 

    def author_params
        # params.permit()
    end 
end
