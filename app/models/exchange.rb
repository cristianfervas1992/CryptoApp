class Exchange < ApplicationRecord
    has_many :cryptoexchanges
	has_many :cryptocurrencies, through: :cryptoexchanges
end