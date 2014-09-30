class CreateJoinTableEvents < ActiveRecord::Migration
  def change
    create_join_table :venues, :bands, table_name: :events
  end
end
