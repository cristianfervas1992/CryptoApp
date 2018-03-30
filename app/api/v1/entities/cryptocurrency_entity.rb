module V1
    module Entities
        class CryptocurrencyEntity < Grape::Entity
            expose :id
            expose :name
            expose :symbol
            expose :fullname
            expose :img_url
        end
    end
end
