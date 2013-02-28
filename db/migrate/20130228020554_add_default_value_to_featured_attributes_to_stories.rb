class AddDefaultValueToFeaturedAttributesToStories < ActiveRecord::Migration

	def self.up
	    change_column :stories, :featured, :boolean, :default => false
	end

	def self.down
	    change_column :stories, :featured, :boolean, :default => nil
	end

end