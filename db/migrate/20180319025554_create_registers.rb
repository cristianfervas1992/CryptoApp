class CreateRegisters < ActiveRecord::Migration[5.1]
  def change
    create_table :registers do |t|
      t.integer :cryptocurrency_id
      t.integer :user_id

      t.timestamps
    end
    add_index :registers, [:cryptocurrency_id, :user_id]
  end
end
