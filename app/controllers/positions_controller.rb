class PositionsController < ApplicationController
  def move
    @item = params[:klass].constantize.find(params[:id])
    @item.insert_at(params[:position].to_i)
    head :ok
  end
end
