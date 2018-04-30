class EditCryptoHistory < ActiveRecord::Migration[5.1]
  def change
    remove_column :cryptohistories, :usd_price
    remove_column :cryptohistories, :btc_price
    add_column :cryptohistories, :usd_value, :decimal
    add_column :cryptohistories, :btc_value, :decimal
  end
end
