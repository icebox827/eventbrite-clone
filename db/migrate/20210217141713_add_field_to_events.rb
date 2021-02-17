class AddFieldToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :date, :datetime
  end
end
