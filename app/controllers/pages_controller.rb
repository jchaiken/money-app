class PagesController < ApplicationController

    def home
        @accounts = Account.all
        @cash = Account.find_by(account_type: 'cash')
        @bank = Account.find_by(account_type: 'bank')
    end

end