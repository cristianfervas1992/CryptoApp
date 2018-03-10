class CryptocurrencyUser < ApplicationRecord
    self.table_name = "cryptocurrencies_users"
    belongs_to :cryptocurrency
    belongs_to :user
end