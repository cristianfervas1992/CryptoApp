class Cryptocurrency < ApplicationRecord	  
	has_many :cryptoexchanges
	has_many :registers
	has_many :exchanges, through: :cryptoexchanges
	has_many :users, through: :registers

end