class AddReferenceToTableAlarm < ActiveRecord::Migration[5.1]
  def change
    add_reference :alarms, :cryptocurrencies_exchanges, index: true
  end
end
