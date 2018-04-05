module V1
    module Entities
        class CryptoexchangeEntity < Grape::Entity
            expose :id
            expose :cryptocurrency_id
            expose :exchange_id
            expose :usd_value
            expose :btc_value
        end
    end
end
