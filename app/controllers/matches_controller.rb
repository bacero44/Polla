class MatchesController < ApplicationController
  before_action :set_matches, only: [:index]
  def index
    options = {}
    options[:include] = [:home_team, :away_team ]
    render json: MatchSerializer.new(@matches, options), status: :ok
  end

  def show
    match = Match.find(params[:match])
    options = {}
    options[:include] = [:'home_team.team', :'away_team.team']
    render json: MatchSerializer.new(match, options), status: :ok
  end

  private

  def set_matches
    if params[:group].present?
      @matches  = Match.where(group_id: params[:group])
    else
      @matches  = Match.where(stage_id: params[:stage])
    end
  end
end
