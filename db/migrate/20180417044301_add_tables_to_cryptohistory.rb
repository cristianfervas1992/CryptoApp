class AddTablesToCryptohistory < ActiveRecord::Migration[5.1]
  def change
    add_column :cryptohistories, :open, :decimal
    add_column :cryptohistories, :close, :decimal
    add_column :cryptohistories, :high, :decimal
    add_column :cryptohistories, :low, :decimal
    add_column :cryptohistories, :avg, :decimal
  end
end
