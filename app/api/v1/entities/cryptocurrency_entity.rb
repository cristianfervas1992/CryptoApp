module V1
    module Entities
        class CryptocurrencyEntity < Grape::Entity
            expose :name
            expose :symbol
            expose :fullname
            expose :img_url
        end
    end
end
