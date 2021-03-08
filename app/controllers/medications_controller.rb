class MedicationsController < ApplicationController
    def index 
        medication = Medication.all 
        render json: medication
    end 

    def show 
        medicaiton = Medication.find(params[:id])
        render json: medicaiton
    end

    def create 
        medicaiton = Medication.new(medicaiton_params)
        if medicaiton.save 
            render json: medicaiton
        else
            render json: {error: 'Unable to create medication'}, status: 400
        end
    end 

    def update 
        medication = Medication.find(params[:id])
        if medicaiton
            medicaiton.update(medicaiton_params)
            render json: medicaiton, status: 200
        else 
            render json: {error: 'Unable to update'}, status: 400
        end
    end 

    def destroy 
        byebug
        medicaiton = Medicaiton.find(params[:id])
        if medicaiton
                medicaiton.destroy
                render json: medicaiton, status: 200
        else
            render json: {error: 'Unable to delete Medication'}, status: 400 
        end
    end 

    private 

    def medication_params
        params.permit(:name, :description)
    end 
end
