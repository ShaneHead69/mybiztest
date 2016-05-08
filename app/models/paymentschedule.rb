class Paymentschedule < ActiveRecord::Base
    has_many :paymentschtrans, inverse_of: :paymentschedule
    has_many :claimpayments, inverse_of: :paymentschedule
    belongs_to :claim
end
