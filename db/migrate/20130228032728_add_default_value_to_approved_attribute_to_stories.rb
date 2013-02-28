class AddDefaultValueToApprovedAttributeToStories < ActiveRecord::Migration

	def self.up
	    change_column :stories, :approved, :boolean, :default => false
	end

	def self.down
	    change_column :stories, :approved, :boolean, :default => nil
	end

end
