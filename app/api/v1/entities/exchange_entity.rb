module V1
    module Entities
        class ExchangeEntity < Grape::Entity
            expose :id
            expose :name
            expose :coins_number
        end
    end
end