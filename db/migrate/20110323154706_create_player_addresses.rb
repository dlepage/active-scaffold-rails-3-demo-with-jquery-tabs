class CreatePlayerAddresses < ActiveRecord::Migration
  def self.up
    create_table :player_addresses do |t|
      t.integer :player_id
      t.string :street
      t.string :region
      t.string :country
      t.boolean :primary

      t.timestamps
    end
  end

  def self.down
    drop_table :player_addresses
  end
end
