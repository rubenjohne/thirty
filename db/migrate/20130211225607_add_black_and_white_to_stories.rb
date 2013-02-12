class AddBlackAndWhiteToStories < ActiveRecord::Migration
  
  def self.up
    add_attachment :stories, :black_and_white
  end
  
  def self.down
    remove_attachment :stories, :black_and_white
  end
  
end
