module V1
    class Alarms < Grape::API
        resource :alarms do
            get do
                present Alarm.all, with: Entities::AlarmEntity
            end
            post do
                Alarm.create_with_params(params)
            end
            put do
                Alarm.update_with_params(params)
            end
        end
    end
end