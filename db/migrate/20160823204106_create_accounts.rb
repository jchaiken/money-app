class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.decimal :balance
      t.string :account_type

      t.timestamps null: false
    end
  end
end
