class DeleteJoinTableCryptocurrenciesExchanges < ActiveRecord::Migration[5.1]
  def change
    drop_join_table :cryptocurrencies, :exchanges 
  end
end
