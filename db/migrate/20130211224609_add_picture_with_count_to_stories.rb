class AddPictureWithCountToStories < ActiveRecord::Migration
  def self.up
    add_attachment :stories, :picture_with_count
  end
  def self.down
    remove_attachment :stories, :picture_with_count
  end
end
