class AddTimestampToCryptohistory < ActiveRecord::Migration[5.1]
  def change
    add_timestamps :cryptohistories, null: true 

    # backfill existing record with created_at and updated_at
    # values making clear that the records are faked
    long_ago = DateTime.new(2000, 1, 1)
    Cryptohistory.update_all(created_at: long_ago, updated_at: long_ago)
  
    # change not null constraints
    change_column_null :cryptohistories, :created_at, false
    change_column_null :cryptohistories, :updated_at, false
  end
end
