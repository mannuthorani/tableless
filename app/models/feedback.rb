class Feedback < ActiveRecord::Base
 
    # fields validation for the database.
    validates :name, presence: true
    validates :email, presence: true, length: {in:5..255}
    validates :address, presence: true
    validates :message, presence: true
    validates :suggestion, presence: true
 
end