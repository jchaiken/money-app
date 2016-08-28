class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.decimal :amount
      t.string :explanation
      t.string :category
      t.string :related_account
      
      t.references :article, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps null: false
    end
  end
end
