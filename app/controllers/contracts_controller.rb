class ContractsController < ApplicationController
    before_action :require_user
    before_filter :load_contact
    
    def index
        @contracts = @contact.contract.all
    end
    
    def new
        @contract = @contact.contract.new
    end
    
    def create
        @contract = @contact.contract.new(params[:contract])
            if @contract.save
                redirect_to contracts_path
            end
    end
    
    def edit
        @contract = @contact.contract.find(params[:id])
    end
    
    def update
        @contract = @contact.contract.find(params[:id])
            if @contract.save
                redirect_to contract_path
            end
    end
        
    def show
        @contract = @contact.contract.find(params[:id])
    end
    
    def destroy
        @contract = @contact.contract.fnd(params[:id])
        @contract.destroy
        redirect_to contracts_path
    end
    
    private
    def load_contact
        @contact - Contact.find(params[contact_id])
    end
    
end
