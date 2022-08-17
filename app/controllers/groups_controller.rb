class GroupsController < ApplicationController
  def index
    groups = Stage.find_by(id: params[:stage],tournament_id: params[:tournament]).groups
    render json: GroupSerializer.new(groups), status: :ok
  end

  def show
    options = {}
    group = Stage.find_by(id: params[:stage], tournament_id: params[:tournament]).groups.where(id: params[:group])
    options[:include] = [:matches]
    render json: GroupSerializer.new(group, options), status: :ok
  end
end
