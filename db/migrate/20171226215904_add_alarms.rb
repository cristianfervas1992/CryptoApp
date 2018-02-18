class AddAlarms < ActiveRecord::Migration[5.1]
  def change 
    create_table :alarms do |t|
      t.references :cryptocurrency
      t.references :exchange
      t.decimal :amount
      t.decimal :percent
      t.timestamps
    end
  end
end
