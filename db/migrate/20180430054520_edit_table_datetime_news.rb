class EditTableDatetimeNews < ActiveRecord::Migration[5.1]
  def change
    remove_column :news, :published_on
    add_column :news, :published_on, :datetime
  end
end
