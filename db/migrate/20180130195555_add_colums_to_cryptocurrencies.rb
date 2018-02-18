class AddColumsToCryptocurrencies < ActiveRecord::Migration[5.1]
  def change
    add_column :cryptocurrencies, :img_url, :string
    add_column :cryptocurrencies, :fullname, :string
  end
end
