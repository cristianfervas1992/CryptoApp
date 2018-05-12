module V1
    class Cryptohistories < Grape::API
        resource :cryptohistories do
            desc 'Get all the histories'
            get do
                present Cryptohistory.all, with: Entities::CryptohistoryEntity
            end
        end
    end
end

