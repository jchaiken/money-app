class Account < ActiveRecord::Base
    
    has_many :transations
    
    validates :name, presence: true
    validates :balance, presence: true
    validates :account_type, presence: true
    
end
