class PlayerEmail < ActiveRecord::Base
  belongs_to :player
  def to_label
    "#{email}"
  end
end
