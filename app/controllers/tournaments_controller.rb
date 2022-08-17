class TournamentsController < ApplicationController
  def index
    tournaments = Tournament.all
    render json: TournamentSerializer.new(tournaments), status: :ok
  end
  def show 
    tournament = Tournament.find(params[:id])
    options = {}
    options[:include] = [:stages]
    
    render json: TournamentSerializer.new(tournament, options).serializable_hash.to_json
    
    

  end
end
