class CreateEventVenues < ActiveRecord::Migration

  def self.up
    create_table :event_venues do |t|
      t.string :venue_name
      t.string :venue_address
      t.string :venue_calendar_color

      t.timestamps
    end

    add_index :event_venues, :id

    #load(Rails.root.join('db', 'seeds', 'event_venues.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "event_venues"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/event_venues"})
    end

    drop_table :event_venues
  end

end
