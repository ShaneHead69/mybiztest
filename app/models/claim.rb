class Claim < ActiveRecord::Base
    has_one :paymentschedule
    has_many :claimtrans, inverse_of: :claim
    has_many :claimpayments, through: :paymentschedules
    belongs_to :contract
end
