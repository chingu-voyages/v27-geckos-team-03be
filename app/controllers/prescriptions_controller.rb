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
        # byebug
        default_description = "Add note here"
        new_med = Medication.create(name: params[:medName], description: default_description, fda_number: params[:fda_number])
        # byebug
        user = JWT.decode(params[:userToken], 'so_secret', true, {algorithm: 'HS256'})
        user_id = user[0]["user_id"]
        # byebug
        prescription = Prescription.new(medication_id: new_med.id, user_id: user_id, weekdays: params[:weekdays], hours: params[:hours])
        # byebug
        if prescription.save 
            render json: {prescription: PrescriptionSerializer.new(prescription)}, status: 200
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

    # def prescription_params
    #     params.permit(:tier, :frequency, :medication_id, :user_id, :expiration_date, )
    # end 
end
