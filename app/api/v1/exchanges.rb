module V1
    class Exchanges < Grape::API
        resource :exchanges do
            get do
                present Exchange.all, with: Entities::ExchangeEntity
            end
            post do
                Exchange.create_with_params(params)
            end
            put do
                Exchange.update_with_params(params)
            end
        end
    end
end