class ContactsController < ApplicationController
    
    before_action :require_user
    
    def index
        @contacts = Contact.all
    end
    
    def new
        @contact = Contact.new
    end
    
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            redirect_to contacts_path
            else render 'new'
        end
    end
    
    def destroy
        @contact = Contact.find(params[:id])
        @contact.destroy
        redirect_to contacts_path
    end
    
    def contact_params
        params.require(:contact).permit(:contactname, :contactref, :contactemail, :contactperson)
    end
    
end
