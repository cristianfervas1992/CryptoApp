module V1
    class Exchanges < Grape::API
        resource :exchanges do
            desc 'Get all the Exchanges'
            get do
                present Exchange.all, with: Entities::ExchangeEntity
            end

            desc 'Return a Exchange by a Id'
            params do
                requires :id
            end
            route_param :id do
                get do
                    Exchange.find(params[:id])
                end
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


  