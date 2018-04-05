class AddColumnsToCryptoexchange < ActiveRecord::Migration[5.1]
  def change
      add_column :cryptoexchanges, :usd_value, :decimal
      add_column :cryptoexchanges, :btc_value, :decimal
  end
end
