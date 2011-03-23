class Player < ActiveRecord::Base
  belongs_to :team
  has_many :player_addresses
  has_many :player_emails
end
