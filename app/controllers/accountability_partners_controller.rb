class AccountabilityPartnersController < ApplicationController

    def index 
        acc_partner = AccountabilityPartner.all
        render json: acc_partner
    end
    
    def create
        acc_partner = AccountabilityPartner.new(accountability_params)
        if acc_partner.save 
            render json: acc_partner
        else 
            render json: {error: "Unable to create accountability partner"}
        end
    end

    private 

    def accountability_params
        params.permit(:patient_id, :partner_id)
    end
end
