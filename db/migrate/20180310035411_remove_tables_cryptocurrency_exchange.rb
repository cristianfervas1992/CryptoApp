class RemoveTablesCryptocurrencyExchange < ActiveRecord::Migration[5.1]
  def change
    remove_column :cryptocurrencies_exchanges, :last_update
    remove_column :cryptocurrencies_exchanges, :last_volume
    remove_column :cryptocurrencies_exchanges, :change
    remove_column :cryptocurrencies_exchanges, :last_price
    remove_column :cryptocurrencies_exchanges, :high_day
    remove_column :cryptocurrencies_exchanges, :low_day
    remove_column :cryptocurrencies_exchanges, :added
  end
end
