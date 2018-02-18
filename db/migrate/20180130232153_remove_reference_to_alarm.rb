class RemoveReferenceToAlarm < ActiveRecord::Migration[5.1]
  def change
    remove_column :alarms, :cryptocurrency_id
    remove_column :alarms, :exchange_id
  end
end
