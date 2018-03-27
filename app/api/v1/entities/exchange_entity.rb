module V1
    module Entities
        class ExchangeEntity < Grape::Entity
            expose :name
            expose :coins_number
        end
    end
end