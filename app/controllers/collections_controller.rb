class CollectionsController < ApplicationController
  def index
    @collections = Collection.where(user: current_user)
  end

  def show
    @colection = Collection.find(params[:id])
  end

  def create; end
end
