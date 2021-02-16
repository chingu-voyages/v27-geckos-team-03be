class PrescriptionsController < ApplicationController
    def index 
        prescriptions = Prescription.all 
        render json: prescriptions
    end 

    def show 
        prescription = Prescription.find(params[:id])
        render json: prescription
    end

    def create 
        prescription = Prescription.new(prescription_params)
        if prescription.save 
            render json: prescription
        else
            render json: {error: 'Unable to create Prescription'}, status: 400
        end
    end 

    def update 
        prescription = Prescription.find(params[:id])
        if prescription
            prescription.update(prescription_params)
            render json: prescription, status: 200 
        else 
            render json: {error: 'Unable to update Prescription'}, status: 400
        end
    end 

    def destroy 
        prescription = Prescription.find(params[:id])
        if prescription
           prescription.destroy
           render json: prescription, status: 200
        else
            render json:{error: 'Unable to delete prescription'}
        end
    end 

    private 

    def prescription_params
        params.permit(:tier, :frequency, :medication_id, :user_id, :expiration_date, )
    end 
end
