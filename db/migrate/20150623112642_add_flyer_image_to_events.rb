class AddFlyerImageToEvents < ActiveRecord::Migration
  def up
    add_attachment :events, :flyer_image
  end

  def down
    remove_attachment :events, :flyer_image
  end
end