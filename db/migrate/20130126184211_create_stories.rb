class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :participant_number
      t.string :image_filename
      t.text :about_me
      t.text :anecdote
      t.string :name
      t.string :company
      t.string :email_address
      t.text :mailing_address
      t.boolean :approved

      t.timestamps
    end
  end
  
  def self.down
    drop_table :stories
  end
end
