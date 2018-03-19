class EditCryptoExchangeTable < ActiveRecord::Migration[5.1]
  def change
    add_index :cryptocurrencies_exchanges, [:cryptocurrency_id, :exchange_id], name: :idx_cryptocurrency_exchange
  end
end
