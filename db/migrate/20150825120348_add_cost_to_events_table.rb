class AddCostToEventsTable < ActiveRecord::Migration
  def change
  	add_column :events, :cost, :string
  end
end
