class Cryptocurrency < ApplicationRecord
	has_many :cryptocurrencies_exchanges
	has_many :cryptocurrencies_users
end