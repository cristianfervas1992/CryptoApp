module V1
    module Entities
        class NewEntity < Grape::Entity
            expose :id
            expose :source
            expose :title
            expose :language
            expose :url
            expose :source_img
            expose :tags
            expose :body
            expose :published_on
            expose :categories
        end
    end
end


