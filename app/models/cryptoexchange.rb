class Cryptoexchange < ApplicationRecord
    belongs_to :cryptocurrency
    belongs_to :exchange
    has_many :alarms
end
