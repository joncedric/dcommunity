class AddHostColumnToEventsTable < ActiveRecord::Migration
  def change
  	add_column :events, :host, :string
  end
end
