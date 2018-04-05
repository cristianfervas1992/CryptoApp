module V1
    class Exchanges < Grape::API
        resource :exchanges do
            desc 'Get all the Exchanges'
            get do
                present Exchange.all, with: Entities::ExchangeEntity
            end

            get ':id' do
                present Exchange.find(params[:id])
            end

            get ':id/cryptocurrencies' do
                exchange = Exchange.find(params[:id])
                present exchange.cryptocurrencies
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


  