class PlayerAddress < ActiveRecord::Base
  belongs_to :player
  
  def to_label
    "#{street} #{region} #{country}"
  end
end
