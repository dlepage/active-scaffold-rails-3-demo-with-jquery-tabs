class PlayersController < ApplicationController
  active_scaffold :player do |conf|
    conf.columns = [:name, :injured, :salary, :date_of_birth, :team_id]
    conf.list.columns = [:name]
    conf.columns[:name].set_link 'edit', {:page => true}
  end
end 