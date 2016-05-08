class Contract < ActiveRecord::Base
    has_one :contact
    has_many :claims, inverse_of: :contract
    has_many :paymentschedules, through: :claims
    belongs_to :user, inverse_of: :contract
end
