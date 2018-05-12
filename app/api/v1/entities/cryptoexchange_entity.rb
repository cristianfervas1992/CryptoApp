module V1
    module Entities
        class CryptoexchangeEntity < Grape::Entity
            expose :id
            expose :cryptocurrency_id
            expose :exchange_id

        end
    end
end
