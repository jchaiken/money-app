class Transaction < ActiveRecord::Base
    belongs_to :account
    belongs_to :user
    
    def create
      @account = Account.find(params[:account_id])
      @transaction = @account.transactions.create(transaction_params)
      redirect_to account_path(@account)
    end
 
  private
    def transaction_params
      params.require(:transaction).permit(:related_account, :body)
    end
end
