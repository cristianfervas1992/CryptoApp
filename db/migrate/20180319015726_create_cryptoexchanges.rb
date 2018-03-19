class CreateCryptoexchanges < ActiveRecord::Migration[5.1]
  def change
    create_table :cryptoexchanges do |t|
      t.integer :cryptocurrency_id
      t.integer :exchange_id
      t.integer :alarm_id

      t.timestamps
    end
    add_index :cryptoexchanges, [:cryptocurrency_id, :exchange_id]
  end
end
