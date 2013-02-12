class AddPictureToStories < ActiveRecord::Migration
  def self.up
    add_attachment :stories, :picture
  end

  def self.down
    remove_attachment :stories, :picture
  end

end
