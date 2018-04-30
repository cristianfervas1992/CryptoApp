module V1
    module Entities
        class CryptohistoryEntity < Grape::Entity
            expose :id
            expose :cryptocurrency_id
            expose :date
            expose :open
            expose :close
            expose :high
            expose :low
            expose :avg
        end
    end
end
