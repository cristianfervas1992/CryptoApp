module V1
    class News < Grape::API
        resource :news do
            get do
                present New.all, with: Entities::NewEntity
            end
            post do
                New.create_with_params(params)
            end
            put do
                New.update_with_params(params)
            end
        end
    end
end