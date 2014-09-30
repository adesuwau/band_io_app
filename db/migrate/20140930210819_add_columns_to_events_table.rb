class AddColumnsToEventsTable < ActiveRecord::Migration
  def change
    add_column :events, :date, :date
    add_column :events, :alcohol_served, :boolean, :default => true
  end
end
