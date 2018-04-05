module V1
    class Cryptoexchanges < Grape::API
        resource :cryptoexchanges do
            desc 'Get all the relations'
            get do
                present Cryptoexchange.all, with: Entities::CryptoexchangeEntity
            end
            
            post do
                Cryptoexchange.create_with_params(params)
            end
            put do
                Cryptoexchange.update_with_params(params)
            end
        end
    end
end

