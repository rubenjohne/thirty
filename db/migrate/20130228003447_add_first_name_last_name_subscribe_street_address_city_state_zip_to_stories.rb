class AddFirstNameLastNameSubscribeStreetAddressCityStateZipToStories < ActiveRecord::Migration
  def self.up
    add_column :stories, :first_name, :string
    add_column :stories, :last_name, :string
    add_column :stories, :subscribe, :boolean
    add_column :stories, :street_address, :string
    add_column :stories, :city, :string
    add_column :stories, :state, :string
    add_column :stories, :zip, :string
  end

  def self.down
    remove_column :stories, :first_name, :string
    remove_column :stories, :last_name, :string
    remove_column :stories, :subscribe, :boolean
    remove_column :stories, :street_address, :string
    remove_column :stories, :city, :string
    remove_column :stories, :state, :string
    remove_column :stories, :zip, :string
  end


end
