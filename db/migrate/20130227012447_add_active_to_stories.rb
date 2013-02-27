class AddActiveToStories < ActiveRecord::Migration
  def self.up
    add_column :stories, :active, :boolean
  end
  
  def self.down
    remove_column :stories, :active  
  end
  
end
