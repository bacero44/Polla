class StagesController < ApplicationController
  def index
    stages = Stage.where(tournament_id: params[:tournament])
    render json: StageSerializer.new(stages), status: :ok
  end

  def show
    stage = Stage.find_by(tournament_id: params[:tournament], id: params[:stage])
    options = {}
    if stage.groups.present?
      options[:include] = [:groups]
    end
    render json: StageSerializer.new(stage, options), status: :ok
  end
end
