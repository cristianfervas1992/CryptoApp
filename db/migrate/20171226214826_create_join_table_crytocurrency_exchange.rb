class CreateJoinTableCrytocurrencyExchange < ActiveRecord::Migration[5.1]
  def change
    create_join_table :cryptocurrencies, :exchanges do |t|
      t.index :exchange_id
      t.index :cryptocurrency_id
      t.decimal :volume
      t.decimal :change
      t.decimal :last_price
      t.decimal :spread
      t.decimal :high
      t.decimal :low
      t.date :added
      t.timestamp
      # t.index [:cryptocurrency_id, :exchange_id]
      # t.index [:exchange_id, :cryptocurrency_id]
    end
  end
end
