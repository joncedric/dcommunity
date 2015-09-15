class CreateDanceStylesEvents < ActiveRecord::Migration
  def change
    create_table :dance_styles_events do |t|
    	t.belongs_to :event, index: true
    	t.belongs_to :dance_style, index: true
    end
  end
end
