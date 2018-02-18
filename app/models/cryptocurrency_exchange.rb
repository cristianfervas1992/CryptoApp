class CryptocurrencyExchange < ApplicationRecord
    self.table_name = "cryptocurrencies_exchanges"
    belongs_to :cryptocurrency
    belongs_to :exchange
    has_many :alarms
end