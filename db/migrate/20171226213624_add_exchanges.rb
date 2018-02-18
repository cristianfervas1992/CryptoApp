class AddExchanges < ActiveRecord::Migration[5.1]
  def change
    create_table :exchanges do |t|
      t.string :name
      t.integer :coins_number
      t.timestamps
    end
  end
end
