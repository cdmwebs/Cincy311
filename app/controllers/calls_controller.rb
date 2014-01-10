class CallsController < ApplicationController
  respond_to :json
  expose(:calls)

  def index
    respond_with calls
  end
end

