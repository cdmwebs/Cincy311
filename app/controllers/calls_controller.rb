class CallsController < ApplicationController
  respond_to :json

  expose(:calls) do
    if params[:sw] && params[:ne]
      Call.within_bounding_box([params[:sw], params[:ne]])
    else
      Call.limit(10)
    end
  end
  expose(:call)

  def index
    respond_with calls
  end

  def show
    respond_with call
  end
end

