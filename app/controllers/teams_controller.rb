class TeamsController < ApplicationController
  def index
    teams = Tournament.find(params[:tournament]).teams
    render json: TeamSerializer.new(teams), status: :ok
  end

  def show
    team = Tournament.find(params[:tournament]).teams.find(params[:team])
    render json: TeamSerializer.new(team), status: :ok
  end
  
end
