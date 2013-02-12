class AddFeaturedToStories < ActiveRecord::Migration
  def self.up
    add_column :stories, :featured, :boolean
  end

  def self.down
    remove_column :stories, :featured, :boolean
  end

end
