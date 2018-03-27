module V1
    class Cryptocurrencies < Grape::API
        resource :cryptocurrencies do
            get do
                present Cryptocurrency.all, with: Entities::CryptocurrencyEntity
            end
            post do
                Cryptocurrency.create_with_params(params)
            end
            put do
                Cryptocurrency.update_with_params(params)
            end
        end
    end
end