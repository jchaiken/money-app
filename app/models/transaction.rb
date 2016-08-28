class Transaction < ActiveRecord::Base
    belongs_to :account
    #belongs_to :user
    
    validates :amount, presence: true
    validates :category, presence: true
    validates :related_account, presence: true
end
