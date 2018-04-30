module V1
    class Cryptohistories < Grape::API
        resource :cryptohistories do
            desc 'Get all the histories'
            get do
                present Cryptohistory.all, with: Entities::CryptohistoryEntity
            end
            get ':cryptocurrency_id/cryptocurrencies' do
                present Cryptohistories.find(params[:cryptocurrency_id])
                
            end
        end
    end
end

