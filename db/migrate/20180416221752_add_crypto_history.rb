class AddCryptoHistory < ActiveRecord::Migration[5.1]
  def change
      create_table :cryptohistories do |t|
        t.integer :cryptocurrency_id
        t.timestamp :date
        t.timestamp :usd_price
        t.timestamp :btc_price
        t.timestamp
      end
      add_index :cryptohistories, [:cryptocurrency_id]
  end
end
