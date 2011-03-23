class CreatePlayerEmails < ActiveRecord::Migration
  def self.up
    create_table :player_emails do |t|
      t.integer :player_id      
      t.string :email
      t.boolean :primary

      t.timestamps
    end
  end

  def self.down
    drop_table :player_emails
  end
end
