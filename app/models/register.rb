class Register < ApplicationRecord
    belongs_to :cryptocurrency
    belongs_to :user
end
