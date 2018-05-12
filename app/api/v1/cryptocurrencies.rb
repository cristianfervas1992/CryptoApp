module V1
    class Cryptocurrencies < Grape::API
        resource :cryptocurrencies do
            desc 'Get all the Cryptocurrencies'
            get do
                present Cryptocurrency.all, with: Entities::CryptocurrencyEntity
            end

            get ':id' do
                present Cryptocurrency.find(params[:id])
            end

            get ':id/exchanges' do
                currency = Cryptocurrency.find(params[:id])
                present currency.exchanges
            end

            get ':id/prices' do
                currency = Cryptocurrency.find(params[:id])
                present currency.cryptoexchanges
            end
            get ':id/histories' do
                currency = Cryptocurrency.find(params[:id])
                present currency.cryptohistories
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