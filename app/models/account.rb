class Account < ActiveRecord::Base
    
    validates :name, presence: true
    validates :balance, presence: true
    validates :account_type, presence: true
    
end
