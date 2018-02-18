class AddInterTableCryptocurrenciesExchanges < ActiveRecord::Migration[5.1]
  def change
    create_table :cryptocurrencies_exchanges do |t|
      t.references :exchange
      t.references :cryptocurrency
      t.string :last_update
      t.decimal :last_volume
      t.decimal :change
      t.decimal :last_price
      t.decimal :high_day
      t.decimal :low_day
      t.date :added
      t.timestamp
      # t.index [:cryptocurrency_id, :exchange_id]
      # t.index [:exchange_id, :cryptocurrency_id]
    end
  end
end
