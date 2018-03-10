class AddRegisters < ActiveRecord::Migration[5.1]
  def change
    create_join_table :cryptocurrencies, :users do |t|
      t.index :cryptocurrency_id
      t.index :user_id
      t.timestamp
    end
  end
end
