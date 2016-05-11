class User < ActiveRecord::Base
    has_secure_password
    has_many :contracts, inverse_of: :user
    
    def editor?
        self.role == "editor"
    end
       
    def sysadmin?
        self.role == "sysadmin"
    end
end
