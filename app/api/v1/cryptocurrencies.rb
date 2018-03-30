module V1
    class Cryptocurrencies < Grape::API
        resource :cryptocurrencies do
            desc 'Get all the Cryptocurrencies'
            get do
                present Cryptocurrency.all, with: Entities::CryptocurrencyEntity
            end
            
            desc 'Return a Cryptocurrency by a Id'
            params do
                requires :id
            end
            route_param :id do
                get do
                    Cryptocurrency.find(params[:id])
                end
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